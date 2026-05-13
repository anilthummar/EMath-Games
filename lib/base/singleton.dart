import '../../../utils/exports.dart';

/// Global service locator. App owns DI; packages use static instance where possible.
final GetIt getIt = GetIt.instance;

/// Registers app and package services. Call before runApp.
///
/// Monorepo layout:
/// - Packages (dls, fnc, logger, storage): static instance, no GetIt
/// - Packages needing app config (permission, notifications): registered here
/// - App services: navigation, config, network, repositories, blocs
void setupLocator() {
  getIt
    ..registerSingleton<PermissionManager>(
      PermissionManager(
        config: PermissionConfig(
          onLog: (String msg) => DebugLog.instance.d(msg),
        ),
      ),
    )
    ..registerSingleton<MainConfig>(MainConfig())
    ..registerSingleton<AppRouter>(AppRouter())
    ..registerSingleton<ApiClient>(ApiClient())
    ..registerLazySingleton<DefaultFirebaseOptions>(DefaultFirebaseOptions.new)
    ..registerLazySingleton<FirebasePermissionHandler>(FirebasePermissionHandler.new)
    ..registerLazySingleton<FirebaseAuthService>(FirebaseAuthService.new)
    ..registerLazySingleton<AnalyticsManager>(AnalyticsManager.new)
    ..registerLazySingleton<CrashlyticsHandler>(CrashlyticsHandler.new)
    ..registerLazySingleton<RemoteConfigService>(RemoteConfigService.new)
    ..registerLazySingleton<FirebaseNotificationService>(
      () => FirebaseNotificationService(
        firebaseOptions: getIt<DefaultFirebaseOptions>(),
        appRouter: getIt<AppRouter>(),
        permissionHandler: getIt<FirebasePermissionHandler>(),
      ),
    )
    ..registerLazySingleton<FirebaseService>(
      () => FirebaseService(
        authService: getIt<FirebaseAuthService>(),
        analyticsManager: getIt<AnalyticsManager>(),
        crashlyticsHandler: getIt<CrashlyticsHandler>(),
        notificationService: getIt<FirebaseNotificationService>(),
        remoteConfigService: getIt<RemoteConfigService>(),
      ),
    )
    ..registerLazySingleton<QuizEngineService>(QuizEngineService.new)
    ..registerLazySingleton<TabOneRepository>(TabOneRepositoryImpl.new)
    ..registerLazySingleton<CustomPaginationRepository>(
      CustomPaginationRepositoryImpl.new,
    )
    ..registerSingleton<LocaleBloc>(LocaleBloc())
    ..registerSingleton<ForceUpdateUnderMaintenanceBloc>(
      ForceUpdateUnderMaintenanceBloc(),
    );
}
