import '../../utils/exports.dart';

/// Handles Firebase Cloud Messaging flows and notification routing.
class FirebaseNotificationService {
  /// Creates a [FirebaseNotificationService].
  FirebaseNotificationService({
    required DefaultFirebaseOptions firebaseOptions,
    required AppRouter appRouter,
    required FirebasePermissionHandler permissionHandler,
  })  : _firebaseOptions = firebaseOptions,
        _appRouter = appRouter,
        _permissionHandler = permissionHandler;

  final DefaultFirebaseOptions _firebaseOptions;
  final AppRouter _appRouter;
  final FirebasePermissionHandler _permissionHandler;

  /// Background isolate handler for FCM messages.
  @pragma('vm:entry-point')
  static Future<void> backgroundMessageHandler(RemoteMessage message) async {
    await AwesomeNotificationManager.showBackgroundNotification(message.data);
  }

  /// Initializes FCM permissions, handlers, and tap listeners.
  Future<void> init() async {
    await _permissionHandler.requestNotificationPermission();
    await NotificationManager.instance.init(
      NotificationConfig(
        optionsProvider: _firebaseOptions,
        vapidKey: kIsWeb ? configVapidKey : null,
        channelConfig: const NotificationChannelConfig(
          channelGroupKey: FirebaseConstants.channelGroupKey,
          channelGroupName: FirebaseConstants.channelGroupName,
          channelKey: FirebaseConstants.channelKey,
          channelName: FirebaseConstants.channelName,
          channelDescription: FirebaseConstants.channelDescription,
        ),
        onTokenReceived: (String token) async {
          DebugLog.instance.i('FCM token: $token');
        },
        onLog: (String message) => DebugLog.instance.i(message),
      ),
    );
    FirebaseMessaging.onBackgroundMessage(backgroundMessageHandler);
    _listenNotificationTap();
    await _handleTerminatedStateNavigation();
  }

  Future<void> _handleTerminatedStateNavigation() async {
    final RemoteMessage? message = await FirebaseMessaging.instance.getInitialMessage();
    if (message == null) {
      return;
    }
    _navigateFromPayload(message.data);
  }

  void _listenNotificationTap() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _navigateFromPayload(message.data);
    });
  }

  void _navigateFromPayload(Map<String, dynamic> payload) {
    final String routePath = (payload[FirebaseConstants.payloadRoute] ?? '').toString();
    if (routePath.isEmpty) {
      return;
    }
    unawaited(_appRouter.pushNamed(routePath));
  }
}
