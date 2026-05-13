/// Constants used by Firebase services.
abstract class FirebaseConstants {
  /// Event name for screen view tracking.
  static const String eventScreenView = 'screen_view';
  /// Event name for button click tracking.
  static const String eventButtonClick = 'button_click';
  /// Event name for quiz start.
  static const String eventQuizStart = 'quiz_start';
  /// Event name for quiz completion.
  static const String eventQuizComplete = 'quiz_complete';

  /// Event parameter key for screen name.
  static const String paramScreenName = 'screen_name';
  /// Event parameter key for button name.
  static const String paramButtonName = 'button_name';
  /// Event parameter key for quiz identifier.
  static const String paramQuizId = 'quiz_id';
  /// Event parameter key for numeric score.
  static const String paramScore = 'score';

  /// Android notification channel key.
  static const String channelKey = 'math_game_channel';
  /// Android notification channel group key.
  static const String channelGroupKey = 'math_game_group';
  /// Android notification channel group title.
  static const String channelGroupName = 'Math Game Notifications';
  /// Android notification channel title.
  static const String channelName = 'General Notifications';
  /// Android notification channel description.
  static const String channelDescription = 'General app notifications';

  /// Notification payload key for route path.
  static const String payloadRoute = 'route';
  /// Notification payload key for encoded route arguments.
  static const String payloadRouteArgs = 'args';

  /// Remote Config key for force update payload.
  static const String remoteConfigForceUpdate = 'force_update_maintainance_config';
  /// Remote Config key for feature flag payload.
  static const String remoteConfigFeatureFlags = 'feature_flags';
  /// Fallback JSON object value.
  static const String defaultJson = '{}';
}
