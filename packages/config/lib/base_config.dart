/// Environment keys for dart-define. Use --dart-define=key=value at build.
const String _baseUrlKey = 'base_url';
const String _androidAppId = 'androidAppId';
const String _iosAppId = 'iosAppId';
const String _webAppId = 'webAppId';
const String _messagingSenderId = 'messagingSenderId';
const String _projectId = 'projectId';
const String _iosApiKey = 'iosApiKey';
const String _androidApiKey = 'androidApiKey';
const String _sentryDSNKey = 'sentryDSN';
const String _envKey = 'envKey';
const String _webApiKey = 'webApiKey';
const String _authDomain = 'authDomain';
const String _storageBucket = 'storageBucket';
const String _measurementId = 'measurementId';
const String _vapidKey = 'vapidKey';

String get configBaseUrl => const String.fromEnvironment(_baseUrlKey);
String get configEnv => const String.fromEnvironment(_envKey);
String get configAndroidAppId => const String.fromEnvironment(_androidAppId);
String get configIosAppId => const String.fromEnvironment(_iosAppId);
String get configWebAppId => const String.fromEnvironment(_webAppId);
String get configSentryDSN => const String.fromEnvironment(_sentryDSNKey);
String get configMessagingSenderId =>
    const String.fromEnvironment(_messagingSenderId);
String get configProjectId => const String.fromEnvironment(_projectId);
String get configIOSApiKey => const String.fromEnvironment(_iosApiKey);
String get configAndroidApiKey => const String.fromEnvironment(_androidApiKey);
String get configWebApiKey => const String.fromEnvironment(_webApiKey);
String get configAuthDomain => const String.fromEnvironment(_authDomain);
String get configStorageBucket =>
    const String.fromEnvironment(_storageBucket);
String get configMeasurementId =>
    const String.fromEnvironment(_measurementId);
String get configVapidKey => const String.fromEnvironment(_vapidKey);
