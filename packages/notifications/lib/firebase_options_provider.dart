import 'package:firebase_core/firebase_core.dart';

/// Provides [FirebaseOptions] for the current platform.
/// Implement in app layer with env/config values.
abstract class FirebaseOptionsProvider {
  FirebaseOptions get currentPlatform;
}
