import '../../utils/exports.dart';

/// Wrapper around Firebase Crashlytics operations.
class CrashlyticsHandler {
  /// Attaches user identifier to crash reports.
  Future<void> setUser(String userId) async {
    if (userId.isNotEmpty) {
      await FirebaseCrashlytics.instance.setUserIdentifier(userId);
    }
  }

  /// Records Flutter framework errors as fatal.
  Future<void> recordFlutterError(FlutterErrorDetails details) async {
    await FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  }

  /// Records custom errors from guarded zones or business logic.
  Future<void> recordError(
    Object error,
    StackTrace stackTrace, {
    bool fatal = true,
  }) async {
    await FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: fatal);
  }
}
