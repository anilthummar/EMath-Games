import '../../utils/exports.dart';

/// Firebase authentication service with anonymous fallback.
class FirebaseAuthService {
  /// Current signed-in Firebase user, if any.
  User? get currentUser => FirebaseAuth.instance.currentUser;

  /// Current Firebase user identifier.
  String get userId => FirebaseAuth.instance.currentUser?.uid ?? '';

  /// Whether a user session exists.
  bool get isLoggedIn => FirebaseAuth.instance.currentUser != null;

  /// Signs in anonymously only when there is no active session.
  Future<User> signInAnonymouslyIfRequired() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      return auth.currentUser!;
    }
    final UserCredential credential = await auth.signInAnonymously();
    return credential.user!;
  }
}
