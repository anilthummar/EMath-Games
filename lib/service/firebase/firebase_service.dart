import '../../utils/exports.dart';

/// Orchestrates Firebase setup for app startup.
class FirebaseService {
  /// Creates a [FirebaseService].
  FirebaseService({
    required FirebaseAuthService authService,
    required AnalyticsManager analyticsManager,
    required CrashlyticsHandler crashlyticsHandler,
    required FirebaseNotificationService notificationService,
    required RemoteConfigService remoteConfigService,
  })  : _authService = authService,
        _analyticsManager = analyticsManager,
        _crashlyticsHandler = crashlyticsHandler,
        _notificationService = notificationService,
        _remoteConfigService = remoteConfigService;

  final FirebaseAuthService _authService;
  final AnalyticsManager _analyticsManager;
  final CrashlyticsHandler _crashlyticsHandler;
  final FirebaseNotificationService _notificationService;
  final RemoteConfigService _remoteConfigService;

  /// Shared analytics manager.
  AnalyticsManager get analytics => _analyticsManager;
  /// Shared Remote Config service.
  RemoteConfigService get remoteConfig => _remoteConfigService;
  /// Shared Crashlytics handler.
  CrashlyticsHandler get crashlytics => _crashlyticsHandler;
  /// Shared Firebase auth service.
  FirebaseAuthService get auth => _authService;

  /// Initializes Firebase SDK and dependent services.
  Future<void> init() async {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(options: getIt<DefaultFirebaseOptions>().currentPlatform);
    }
    await _authService.signInAnonymouslyIfRequired();
    await _crashlyticsHandler.setUser(_authService.userId);
    await _remoteConfigService.init();
    await _notificationService.init();
  }
}
