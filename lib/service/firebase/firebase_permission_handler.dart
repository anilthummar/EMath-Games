import '../../utils/exports.dart';

/// Handles notification permission flow for Android and iOS.
class FirebasePermissionHandler {
  /// Requests notification permission based on platform rules.
  Future<void> requestNotificationPermission() async {
    if (kIsWeb) {
      return;
    }

    if (Platform.isAndroid) {
      await _requestAndroidNotificationPermission();
      return;
    }

    if (Platform.isIOS) {
      await _requestIosNotificationPermission();
    }
  }

  Future<void> _requestAndroidNotificationPermission() async {
    final AndroidDeviceInfo info = await DeviceInfoPlugin().androidInfo;
    if (info.version.sdkInt < 33) {
      return;
    }
    final PermissionStatus status = await Permission.notification.request();
    if (status.isDenied || status.isPermanentlyDenied) {
      DebugLog.instance.w('Android notification permission denied.');
    }
  }

  Future<void> _requestIosNotificationPermission() async {
    final NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      DebugLog.instance.w('iOS notification permission denied.');
    }
  }
}
