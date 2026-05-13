import '../../../utils/exports.dart';

part 'learning_topic_model.freezed.dart';

/// Learning topic metadata.
@freezed
class LearningTopicModel with _$LearningTopicModel {
  /// Creates a learning topic.
  const factory LearningTopicModel({
    required QuizOperation operation,
  }) = _LearningTopicModel;
}
