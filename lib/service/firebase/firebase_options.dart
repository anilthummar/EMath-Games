import '../../utils/exports.dart';

/// App-specific Firebase options provider.
class DefaultFirebaseOptions implements FirebaseOptionsProvider {
  /// Returns the Firebase options for the current platform.
  @override
  FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return FirebaseOptions(
        apiKey: configWebApiKey,
        appId: configWebAppId,
        messagingSenderId: configMessagingSenderId,
        projectId: configProjectId,
        measurementId: configMeasurementId,
        authDomain: configAuthDomain,
        storageBucket: configStorageBucket,
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return FirebaseOptions(
          apiKey: configAndroidApiKey,
          appId: configAndroidAppId,
          messagingSenderId: configMessagingSenderId,
          projectId: configProjectId,
        );
      case TargetPlatform.iOS:
        return FirebaseOptions(
          apiKey: configIOSApiKey,
          appId: configIosAppId,
          messagingSenderId: configMessagingSenderId,
          projectId: configProjectId,
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }
  }
}
