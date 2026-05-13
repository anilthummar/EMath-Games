import '../../../utils/exports.dart';

part 'quiz_question_model.freezed.dart';

/// Quiz question model.
@freezed
class QuizQuestionModel with _$QuizQuestionModel {
  /// Creates quiz question.
  const factory QuizQuestionModel({
    required String id,
    required String expression,
    required int correctAnswer,
    required List<int> options,
  }) = _QuizQuestionModel;
}
