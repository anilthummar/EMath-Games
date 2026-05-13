import '../../utils/exports.dart';

/// Centralized Firebase analytics event logger.
class AnalyticsManager {
  /// Tracks a screen view event.
  Future<void> trackScreenView(String screenName) async {
    await FirebaseAnalytics.instance.logEvent(
      name: FirebaseConstants.eventScreenView,
      parameters: <String, Object>{
        FirebaseConstants.paramScreenName: screenName,
      },
    );
  }

  /// Tracks a button click event.
  Future<void> trackButtonClick(String buttonName) async {
    await FirebaseAnalytics.instance.logEvent(
      name: FirebaseConstants.eventButtonClick,
      parameters: <String, Object>{
        FirebaseConstants.paramButtonName: buttonName,
      },
    );
  }

  /// Tracks quiz start.
  Future<void> trackQuizStart({required String quizId}) async {
    await FirebaseAnalytics.instance.logEvent(
      name: FirebaseConstants.eventQuizStart,
      parameters: <String, Object>{
        FirebaseConstants.paramQuizId: quizId,
      },
    );
  }

  /// Tracks quiz completion with score.
  Future<void> trackQuizComplete({
    required String quizId,
    required int score,
  }) async {
    await FirebaseAnalytics.instance.logEvent(
      name: FirebaseConstants.eventQuizComplete,
      parameters: <String, Object>{
        FirebaseConstants.paramQuizId: quizId,
        FirebaseConstants.paramScore: score,
      },
    );
  }
}
