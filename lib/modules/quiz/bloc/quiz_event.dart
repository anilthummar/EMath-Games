import '../../../utils/exports.dart';

part 'quiz_event.freezed.dart';

/// Quiz events.
@freezed
class QuizEvent with _$QuizEvent {
  /// Starts quiz for operation.
  const factory QuizEvent.started({
    required QuizOperation operation,
    required QuizDifficulty difficulty,
  }) = QuizStarted;

  /// Selects answer option.
  const factory QuizEvent.answerSelected(int answer) = QuizAnswerSelected;

  /// Submits selected answer.
  const factory QuizEvent.answerSubmitted() = QuizAnswerSubmitted;

  /// Moves to next question.
  const factory QuizEvent.nextQuestion() = QuizNextQuestion;

  /// Ticks question timer by one second.
  const factory QuizEvent.timerTicked() = QuizTimerTicked;

  /// Triggered when current question time runs out.
  const factory QuizEvent.timerExpired() = QuizTimerExpired;

  /// Restarts current quiz.
  const factory QuizEvent.restarted() = QuizRestarted;
}
