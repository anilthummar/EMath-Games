import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import 'awesome_notification_manager.dart';
import 'notification_config.dart';

/// Manages Firebase and FCM notification setup.
class NotificationManager {
  NotificationManager._();

  static final NotificationManager instance = NotificationManager._();

  NotificationConfig? _config;

  /// Initializes notifications.
  Future<void> init(NotificationConfig config) async {
    _config = config;

    await AwesomeNotificationManager.instance.init(
      config.channelConfig,
      onLog: config.onLog,
      debug: config.debug,
    );

    await _firebaseInitialize();
    FirebaseMessaging.onBackgroundMessage(_backgroundMessage);
    await _getToken();
    await _getInitialMessage();
    _onMessage();
    _onMessageOpenedApp();
  }

  Future<void> _firebaseInitialize() async {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: _config!.optionsProvider.currentPlatform,
      );
    }
  }

  /// Top-level handler for background messages. Runs in separate isolate.
  @pragma('vm:entry-point')
  static Future<void> _backgroundMessage(RemoteMessage message) async {
    await AwesomeNotificationManager.showBackgroundNotification(message.data);
  }

  Future<void> _getToken({int retries = 0}) async {
    try {
      final String? token = await FirebaseMessaging.instance.getToken(
        vapidKey: kIsWeb ? _config!.vapidKey : null,
      );
      await _config?.onTokenReceived?.call(token ?? '');
      _config?.onLog?.call('FCM Token: $token');
    } on Exception {
      if (retries < (_config?.maxTokenRetries ?? 3)) {
        await Future<dynamic>.delayed(_config!.tokenRetryDelay);
        await _getToken(retries: retries + 1);
      }
    }
  }

  Future<void> _getInitialMessage() async {
    await FirebaseMessaging.instance.getInitialMessage().then(
      (RemoteMessage? message) {
        _config?.onLog?.call(
          'FCM Initial: ${message?.data} ${message?.notification}',
        );
      },
    );
  }

  void _onMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      _config?.onLog?.call(
        'FCM Foreground: ${message.data} ${message.notification}',
      );
      await AwesomeNotificationManager.instance.showNotification(
        payload: message.data,
      );
    });
  }

  void _onMessageOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _config?.onLog?.call(
        'FCM MessageOpenedApp: ${message.data} ${message.notification}',
      );
    });
  }
}
