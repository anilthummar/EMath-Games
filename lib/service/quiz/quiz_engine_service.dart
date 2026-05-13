import '../../utils/exports.dart';

/// Supported operations for quiz generation.
enum QuizOperation {
  /// Addition operation.
  addition,
  /// Subtraction operation.
  subtraction,
  /// Multiplication operation.
  multiplication,
  /// Division operation.
  division,
}

/// Supported difficulty levels for quiz.
enum QuizDifficulty {
  /// Easy level.
  easy,
  /// Medium level.
  medium,
  /// Hard level.
  hard,
}

/// Quiz engine for generating and evaluating questions.
class QuizEngineService {
  final Random _random = Random();

  /// Returns current persisted level.
  int currentLevel() {
    return SharedPref.instance.getInt(AppConstant.quizLevelKey, 1);
  }

  /// Persists level progression.
  Future<void> saveLevel(int level) async {
    await SharedPref.instance.setValue(AppConstant.quizLevelKey, level);
  }

  /// Builds a question set for given operation and level.
  List<QuizQuestionModel> generateQuestions({
    required QuizOperation operation,
    required int level,
    required QuizDifficulty difficulty,
    required int totalQuestions,
  }) {
    final int maxRange = _maxRange(level: level, difficulty: difficulty);
    return List<QuizQuestionModel>.generate(totalQuestions, (int index) {
      final int first = _random.nextInt(maxRange) + 1;
      final int second = _random.nextInt(maxRange) + 1;
      return _buildQuestion(
        operation: operation,
        first: first,
        second: second,
      );
    });
  }

  /// Evaluates answer and returns score delta.
  int scoreForAnswer({
    required QuizQuestionModel question,
    required int selectedAnswer,
  }) {
    return question.correctAnswer == selectedAnswer
        ? AppConstant.quizPointsPerCorrect
        : 0;
  }

  /// Calculates next level from quiz performance.
  int nextLevel({
    required int currentLevel,
    required int score,
    required int totalQuestions,
  }) {
    final int maxScore = totalQuestions * AppConstant.quizPointsPerCorrect;
    final double ratio = maxScore == 0 ? 0 : score / maxScore;
    if (ratio >= 0.7) {
      return currentLevel + 1;
    }
    return currentLevel;
  }

  /// Returns per-question timer seconds by difficulty.
  int timerSeconds(QuizDifficulty difficulty) {
    switch (difficulty) {
      case QuizDifficulty.easy:
        return AppConstant.quizEasySeconds;
      case QuizDifficulty.medium:
        return AppConstant.quizMediumSeconds;
      case QuizDifficulty.hard:
        return AppConstant.quizHardSeconds;
    }
  }

  QuizQuestionModel _buildQuestion({
    required QuizOperation operation,
    required int first,
    required int second,
  }) {
    switch (operation) {
      case QuizOperation.addition:
        final int correct = first + second;
        return _makeQuestion(first, second, '+', correct);
      case QuizOperation.subtraction:
        final int a = max(first, second);
        final int b = min(first, second);
        final int correct = a - b;
        return _makeQuestion(a, b, '-', correct);
      case QuizOperation.multiplication:
        final int correct = first * second;
        return _makeQuestion(first, second, 'x', correct);
      case QuizOperation.division:
        final int divisor = max(1, second);
        final int answer = max(1, first % divisor == 0 ? first ~/ divisor : first);
        final int dividend = divisor * answer;
        return _makeQuestion(dividend, divisor, '/', answer);
    }
  }

  QuizQuestionModel _makeQuestion(
    int first,
    int second,
    String symbol,
    int correct,
  ) {
    final Set<int> options = <int>{correct};
    while (options.length < 4) {
      final int candidate = max(0, correct + _random.nextInt(11) - 5);
      options.add(candidate);
    }
    final List<int> shuffled = options.toList()..shuffle(_random);
    return QuizQuestionModel(
      id: '${DateTime.now().microsecondsSinceEpoch}_$first$symbol$second',
      expression: '$first $symbol $second = ?',
      correctAnswer: correct,
      options: shuffled,
    );
  }

  int _maxRange({
    required int level,
    required QuizDifficulty difficulty,
  }) {
    final int base = level * 10;
    switch (difficulty) {
      case QuizDifficulty.easy:
        return base.clamp(10, 40);
      case QuizDifficulty.medium:
        return (base + 20).clamp(20, 80);
      case QuizDifficulty.hard:
        return (base + 40).clamp(30, 120);
    }
  }
}
