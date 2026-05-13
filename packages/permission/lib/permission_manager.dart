import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

import 'permission_config.dart';

/// Utility for permission requests and status checks.
class PermissionManager {
  PermissionManager._({PermissionConfig? config})
      : _config = config ?? const PermissionConfig();

  factory PermissionManager({PermissionConfig? config}) =>
      PermissionManager._(config: config);

  final PermissionConfig _config;

  Future<bool> requestPermissions(List<Permission> permissions) async {
    final Map<Permission, PermissionStatus> status = await permissions.request();
    return status.values.every((PermissionStatus s) => s.isGranted);
  }

  Future<bool> isAllPermissionsGranted(List<Permission> permissions) async {
    final statuses = await permissions.request();
    return statuses.values.every((s) => s == PermissionStatus.granted);
  }

  Future<bool> isAndroidOSVersionIS13() async {
    final androidInfo = await DeviceInfoPlugin().androidInfo;
    return androidInfo.version.sdkInt > 32;
  }

  Future<bool> checkLocationPermission() async {
    final status = await Permission.location.status;
    return status.isGranted;
  }

  Future<bool> requestLocationPermission() async {
    final status = await Permission.location.request();
    return _handlePermissionResult(status, 'location');
  }

  Future<bool> checkStoragePermission() async {
    final status = await Permission.storage.status;
    return status.isGranted || status.isDenied;
  }

  Future<bool> requestStoragePermission() async {
    final status = await Permission.storage.request();
    return _handlePermissionResult(status, 'storage');
  }

  Future<bool> checkSMSPermission() async {
    final status = await Permission.sms.status;
    return status.isGranted || status.isDenied;
  }

  Future<bool> requestSMSPermission() async {
    final status = await Permission.sms.request();
    return _handlePermissionResult(status, 'sms');
  }

  Future<bool> checkContactsPermission() async {
    final status = await Permission.contacts.status;
    return status.isGranted || status.isDenied;
  }

  Future<bool> requestContactPermission() async {
    final status = await Permission.contacts.request();
    return _handlePermissionResult(status, 'contacts');
  }

  Future<bool> checkPhonePermission() async {
    final status = await Permission.phone.status;
    return status.isGranted || status.isDenied;
  }

  Future<bool> requestPhonePermission() async {
    final status = await Permission.phone.request();
    return _handlePermissionResult(status, 'phone');
  }

  Future<bool> checkCameraPermission() async {
    final status = await Permission.camera.status;
    return status.isGranted;
  }

  Future<bool> requestCameraPermission() async {
    final status = await Permission.camera.request();
    return _handlePermissionResult(status, 'camera');
  }

  Future<bool> requestNotificationsPermission() async {
    final status = await Permission.notification.request();
    return _handlePermissionResult(status, 'notification');
  }

  /// Requests a single permission. Returns true if granted.
  Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return _handlePermissionResult(status, permission.toString());
  }

  /// Requests permissions in sequence; stops on first denial.
  Future<void> requestInSequence(List<Permission> permissions) async {
    for (final p in permissions) {
      if (!await requestPermission(p)) return;
    }
  }

  Future<void> openMobileSetting() async => openAppSettings();

  Future<bool> _handlePermissionResult(
    PermissionStatus status,
    String type,
  ) async {
    if (status == PermissionStatus.granted) {
      _config.onLog?.call('Permission granted: $type');
      return true;
    }
    if (status == PermissionStatus.permanentlyDenied) {
      _config.onLog?.call('Permission permanently denied: $type');
      await openAppSettings();
    }
    return false;
  }
}
