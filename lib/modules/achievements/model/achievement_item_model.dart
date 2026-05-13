import '../../../utils/exports.dart';

part 'achievement_item_model.freezed.dart';

/// Achievement row model.
@freezed
class AchievementItemModel with _$AchievementItemModel {
  /// Creates achievement item.
  const factory AchievementItemModel({
    required AchievementType type,
    required bool unlocked,
  }) = _AchievementItemModel;
}

/// Supported achievement types.
enum AchievementType {
  /// Complete first quiz.
  firstQuiz,
  /// Complete five quizzes.
  quizExplorer,
  /// Reach high score threshold.
  scoreChampion,
}
