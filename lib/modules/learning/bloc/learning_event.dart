import '../../../utils/exports.dart';

part 'learning_event.freezed.dart';

/// Events for learning module.
@freezed
class LearningEvent with _$LearningEvent {
  /// Triggered when learning screen opens.
  const factory LearningEvent.started() = LearningStarted;

  /// Triggered when a topic is selected.
  const factory LearningEvent.topicSelected(QuizOperation operation) = LearningTopicSelected;

  /// Triggered when a quiz difficulty is selected.
  const factory LearningEvent.difficultySelected(QuizDifficulty difficulty) =
      LearningDifficultySelected;
}
