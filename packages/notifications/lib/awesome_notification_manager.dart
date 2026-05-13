import 'dart:async';
import 'dart:isolate';
import 'dart:math';
import 'dart:ui';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';

import 'notification_channel_config.dart';

/// Manages Awesome Notifications setup and display.
class AwesomeNotificationManager {
  AwesomeNotificationManager._();

  static final AwesomeNotificationManager instance = AwesomeNotificationManager._();
  static final AwesomeNotifications _awesomeNotification = AwesomeNotifications();
  static ReceivePort? receivePort;

  static AwesomeNotifications get _notifications => _awesomeNotification;

  NotificationChannelConfig _channelConfig = const NotificationChannelConfig();
  void Function(String)? _onLog;
  bool _debug = kDebugMode;

  /// Initializes with config. Call before [NotificationManager.init].
  Future<void> init(
    NotificationChannelConfig channelConfig, {
    void Function(String)? onLog,
    bool debug = kDebugMode,
  }) async {
    _channelConfig = channelConfig;
    _onLog = onLog;
    _debug = debug;
    await _initializeAwesomeNotification();
    if (!kIsWeb) _initializeIsolatePort();
  }

  Future<void> _initializeAwesomeNotification() async {
    _onLog?.call('Initializing Awesome Notifications');
    await _awesomeNotification.initialize(
      null,
      <NotificationChannel>[_channelConfig.channel],
      channelGroups: <NotificationChannelGroup>[_channelConfig.channelGroup],
      debug: _debug,
    );

    await _awesomeNotification.isNotificationAllowed().then((bool isAllowed) {
      if (!isAllowed) {
        unawaited(_awesomeNotification.requestPermissionToSendNotifications());
      }
    });

    await _awesomeNotification.setListeners(
      onNotificationCreatedMethod: _onNotificationCreated,
      onActionReceivedMethod: _onActionReceived,
      onNotificationDisplayedMethod: _onNotificationDisplayed,
      onDismissActionReceivedMethod: _onDismissActionReceived,
    );
  }

  void _initializeIsolatePort() {
    receivePort = ReceivePort('Notification action port in main isolate')
      ..listen((dynamic silentData) async =>
          _onActionReceivedImplementation(silentData));

    IsolateNameServer.registerPortWithName(
      receivePort!.sendPort,
      'notification_action_port',
    );
  }

  @pragma('vm:entry-point')
  static Future<void> _onNotificationCreated(
    ReceivedNotification receivedNotification,
  ) async {}

  @pragma('vm:entry-point')
  static Future<void> _onDismissActionReceived(
    ReceivedAction receivedAction,
  ) async {}

  @pragma('vm:entry-point')
  static Future<void> _onNotificationDisplayed(
    ReceivedNotification receivedNotification,
  ) async {}

  @pragma('vm:entry-point')
  static Future<void> _onActionReceived(ReceivedAction receivedAction) async {}

  static Future<void> _onActionReceivedImplementation(
    dynamic receivedAction,
  ) async {}

  /// Shows a notification with the given payload.
  Future<void> showNotification({Map<String, dynamic>? payload}) async {
    if (payload?.isNotEmpty ?? false) {
      await _createNotification(payload!, _channelConfig.channelKey);
    }
  }

  /// Shows notification from background isolate. Call from FCM background handler.
  static Future<void> showBackgroundNotification(
    Map<String, dynamic>? payload,
  ) async {
    if (payload?.isNotEmpty ?? false) {
      const config = NotificationChannelConfig();
      await _initializeForBackground(config, debug: kDebugMode);
      await _createNotificationStatic(
        payload!,
        config.channelKey,
      );
    }
  }

  static Future<void> _initializeForBackground(
    NotificationChannelConfig config, {
    bool debug = kDebugMode,
  }) async {
    await _notifications.initialize(
      null,
      <NotificationChannel>[config.channel],
      channelGroups: <NotificationChannelGroup>[config.channelGroup],
      debug: debug,
    );
  }

  Future<void> _createNotification(
    Map<String, dynamic> payload,
    String channelKey,
  ) async {
    await _awesomeNotification.createNotification(
      content: NotificationContent(
        id: Random().nextInt(1000),
        channelKey: channelKey,
        title: payload['title'] ?? '',
        body: payload['body'] ?? '',
        bigPicture: payload['image'] ?? '',
        payload: Map<String, String>.from(payload),
      ),
    );
  }

  static Future<void> _createNotificationStatic(
    Map<String, dynamic> payload,
    String channelKey,
  ) async {
    await _notifications.createNotification(
      content: NotificationContent(
        id: Random().nextInt(1000),
        channelKey: channelKey,
        title: payload['title'] ?? '',
        body: payload['body'] ?? '',
        bigPicture: payload['image'] ?? '',
        payload: Map<String, String>.from(payload),
      ),
    );
  }
}
