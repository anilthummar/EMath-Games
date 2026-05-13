import '../../../utils/exports.dart';

part 'quiz_state.freezed.dart';

/// Immutable quiz state.
@freezed
class QuizState with _$QuizState {
  /// Creates quiz state.
  const factory QuizState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(QuizOperation.addition) QuizOperation operation,
    @Default(QuizDifficulty.medium) QuizDifficulty difficulty,
    @Default(<QuizQuestionModel>[]) List<QuizQuestionModel> questions,
    @Default(0) int questionIndex,
    @Default(0) int score,
    @Default(0) int answeredQuestions,
    @Default(0) int correctAnswers,
    int? selectedAnswer,
    @Default(false) bool isAnswerSubmitted,
    @Default(false) bool isCompleted,
    @Default(1) int currentLevel,
    @Default(1) int progressedLevel,
    @Default(0) int remainingSeconds,
    @Default(0) int totalSecondsPerQuestion,
  }) = _QuizState;
}
