import '../../../utils/exports.dart';

/// Bloc for learning module interactions.
class LearningBloc extends Bloc<LearningEvent, LearningState> {
  /// Creates [LearningBloc].
  LearningBloc() : super(const LearningState()) {
    on<LearningStarted>(_onStarted);
    on<LearningTopicSelected>(_onTopicSelected);
    on<LearningDifficultySelected>(_onDifficultySelected);
    add(const LearningEvent.started());
  }

  Future<void> _onStarted(
    LearningStarted event,
    Emitter<LearningState> emit,
  ) async {
    emit(state.copyWith(
      status: BaseStateStatus.success,
      currentLevel: getIt<QuizEngineService>().currentLevel(),
      topics: <LearningTopicModel>[
        const LearningTopicModel(
          operation: QuizOperation.addition,
        ),
        const LearningTopicModel(
          operation: QuizOperation.subtraction,
        ),
        const LearningTopicModel(
          operation: QuizOperation.multiplication,
        ),
        const LearningTopicModel(
          operation: QuizOperation.division,
        ),
      ],
    ));
  }

  Future<void> _onTopicSelected(
    LearningTopicSelected event,
    Emitter<LearningState> emit,
  ) async {
    emit(state.copyWith(selectedOperation: event.operation));
    await getIt<FirebaseService>().analytics.trackButtonClick(
      '${event.operation.name}${AppConstant.analyticsStartQuizSuffix}',
    );
  }

  Future<void> _onDifficultySelected(
    LearningDifficultySelected event,
    Emitter<LearningState> emit,
  ) async {
    emit(state.copyWith(selectedDifficulty: event.difficulty));
    await getIt<FirebaseService>()
        .analytics
        .trackButtonClick('${AppConstant.analyticsDifficultyPrefix}${event.difficulty.name}');
  }
}
