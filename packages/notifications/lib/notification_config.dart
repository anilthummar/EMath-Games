import 'package:flutter/foundation.dart';

import 'firebase_options_provider.dart';
import 'notification_channel_config.dart';

/// Configuration for notification initialization.
class NotificationConfig {
  const NotificationConfig({
    required this.optionsProvider,
    this.channelConfig = const NotificationChannelConfig(),
    this.vapidKey,
    this.onTokenReceived,
    this.onLog,
    this.tokenRetryDelay = const Duration(seconds: 5),
    this.maxTokenRetries = 3,
    this.debug = kDebugMode,
  });

  final FirebaseOptionsProvider optionsProvider;

  /// Web VAPID key (null for mobile).
  final String? vapidKey;

  final NotificationChannelConfig channelConfig;

  /// Called when FCM token is received.
  final Future<void> Function(String token)? onTokenReceived;

  final void Function(String message)? onLog;

  final Duration tokenRetryDelay;
  final int maxTokenRetries;

  /// Enable debug logging for Awesome Notifications.
  final bool debug;
}
