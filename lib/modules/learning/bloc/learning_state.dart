import '../../../utils/exports.dart';

part 'learning_state.freezed.dart';

/// Immutable state for learning module.
@freezed
class LearningState with _$LearningState {
  /// Creates learning state.
  const factory LearningState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(<LearningTopicModel>[]) List<LearningTopicModel> topics,
    @Default(QuizOperation.addition) QuizOperation selectedOperation,
    @Default(QuizDifficulty.medium) QuizDifficulty selectedDifficulty,
    @Default(1) int currentLevel,
  }) = _LearningState;
}
