import '../../../utils/exports.dart';

/// Bloc for quiz interactions and progress tracking.
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  /// Creates [QuizBloc].
  QuizBloc({
    required QuizOperation operation,
    required QuizDifficulty difficulty,
    required QuizEngineService engine,
  })  : _engine = engine,
        super(const QuizState()) {
    on<QuizStarted>(_onStarted);
    on<QuizAnswerSelected>(_onAnswerSelected);
    on<QuizAnswerSubmitted>(_onAnswerSubmitted);
    on<QuizNextQuestion>(_onNextQuestion);
    on<QuizTimerTicked>(_onTimerTicked);
    on<QuizTimerExpired>(_onTimerExpired);
    on<QuizRestarted>(_onRestarted);
    add(QuizEvent.started(operation: operation, difficulty: difficulty));
  }

  final QuizEngineService _engine;
  Timer? _timer;

  Future<void> _onStarted(QuizStarted event, Emitter<QuizState> emit) async {
    final int level = _engine.currentLevel();
    final int secondsPerQuestion = _engine.timerSeconds(event.difficulty);
    final List<QuizQuestionModel> questions = _engine.generateQuestions(
      operation: event.operation,
      level: level,
      difficulty: event.difficulty,
      totalQuestions: AppConstant.quizTotalQuestions,
    );
    emit(state.copyWith(
      status: BaseStateStatus.success,
      operation: event.operation,
      difficulty: event.difficulty,
      currentLevel: level,
      progressedLevel: level,
      questions: questions,
      questionIndex: 0,
      selectedAnswer: null,
      score: 0,
      answeredQuestions: 0,
      correctAnswers: 0,
      isAnswerSubmitted: false,
      isCompleted: false,
      remainingSeconds: secondsPerQuestion,
      totalSecondsPerQuestion: secondsPerQuestion,
    ));
    _startTimer();
    await getIt<FirebaseService>().analytics.trackQuizStart(quizId: event.operation.name);
  }

  void _onAnswerSelected(QuizAnswerSelected event, Emitter<QuizState> emit) {
    if (state.isAnswerSubmitted || state.isCompleted) {
      return;
    }
    emit(state.copyWith(selectedAnswer: event.answer));
  }

  Future<void> _onAnswerSubmitted(
    QuizAnswerSubmitted event,
    Emitter<QuizState> emit,
  ) async {
    if (state.isCompleted || state.selectedAnswer == null || state.questions.isEmpty) {
      return;
    }
    final QuizQuestionModel current = state.questions[state.questionIndex];
    final int gained = _engine.scoreForAnswer(
      question: current,
      selectedAnswer: state.selectedAnswer!,
    );
    _stopTimer();
    emit(state.copyWith(
      score: state.score + gained,
      correctAnswers: state.correctAnswers + (gained > 0 ? 1 : 0),
      answeredQuestions: state.answeredQuestions + 1,
      isAnswerSubmitted: true,
    ));
  }

  Future<void> _onNextQuestion(
    QuizNextQuestion event,
    Emitter<QuizState> emit,
  ) async {
    if (state.questions.isEmpty) {
      return;
    }
    final bool isLast = state.questionIndex >= state.questions.length - 1;
    if (isLast) {
      final int bestScore = SharedPref.instance.getInt(AppConstant.quizBestScoreKey, 0);
      final int playedCount = SharedPref.instance.getInt(AppConstant.quizPlayedCountKey, 0);
      await SharedPref.instance.setValue(
        AppConstant.quizBestScoreKey,
        max(bestScore, state.score),
      );
      await SharedPref.instance.setValue(
        AppConstant.quizPlayedCountKey,
        playedCount + 1,
      );
      final int nextLevel = _engine.nextLevel(
        currentLevel: state.currentLevel,
        score: state.score,
        totalQuestions: state.questions.length,
      );
      await _engine.saveLevel(nextLevel);
      emit(state.copyWith(
        isCompleted: true,
        progressedLevel: nextLevel,
        remainingSeconds: 0,
      ));
      _stopTimer();
      await getIt<FirebaseService>().analytics.trackQuizComplete(
        quizId: state.operation.name,
        score: state.score,
      );
      return;
    }
    emit(state.copyWith(
      questionIndex: state.questionIndex + 1,
      selectedAnswer: null,
      isAnswerSubmitted: false,
      remainingSeconds: state.totalSecondsPerQuestion,
    ));
    _startTimer();
  }

  void _onRestarted(QuizRestarted event, Emitter<QuizState> emit) {
    add(QuizEvent.started(
      operation: state.operation,
      difficulty: state.difficulty,
    ));
  }

  void _onTimerTicked(QuizTimerTicked event, Emitter<QuizState> emit) {
    if (state.isCompleted || state.isAnswerSubmitted) {
      return;
    }
    final int next = state.remainingSeconds - 1;
    if (next <= 0) {
      add(const QuizEvent.timerExpired());
      return;
    }
    emit(state.copyWith(remainingSeconds: next));
  }

  void _onTimerExpired(QuizTimerExpired event, Emitter<QuizState> emit) {
    if (state.isCompleted || state.isAnswerSubmitted) {
      return;
    }
    _stopTimer();
    emit(state.copyWith(
      selectedAnswer: null,
      isAnswerSubmitted: true,
      answeredQuestions: state.answeredQuestions + 1,
      remainingSeconds: 0,
    ));
  }

  void _startTimer() {
    _stopTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const QuizEvent.timerTicked());
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> close() {
    _stopTimer();
    return super.close();
  }
}
