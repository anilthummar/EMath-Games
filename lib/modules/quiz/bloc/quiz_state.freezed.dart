// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizState {
  BaseStateStatus get status => throw _privateConstructorUsedError;
  QuizOperation get operation => throw _privateConstructorUsedError;
  QuizDifficulty get difficulty => throw _privateConstructorUsedError;
  List<QuizQuestionModel> get questions => throw _privateConstructorUsedError;
  int get questionIndex => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get answeredQuestions => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  int? get selectedAnswer => throw _privateConstructorUsedError;
  bool get isAnswerSubmitted => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get currentLevel => throw _privateConstructorUsedError;
  int get progressedLevel => throw _privateConstructorUsedError;
  int get remainingSeconds => throw _privateConstructorUsedError;
  int get totalSecondsPerQuestion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call(
      {BaseStateStatus status,
      QuizOperation operation,
      QuizDifficulty difficulty,
      List<QuizQuestionModel> questions,
      int questionIndex,
      int score,
      int answeredQuestions,
      int correctAnswers,
      int? selectedAnswer,
      bool isAnswerSubmitted,
      bool isCompleted,
      int currentLevel,
      int progressedLevel,
      int remainingSeconds,
      int totalSecondsPerQuestion});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? operation = null,
    Object? difficulty = null,
    Object? questions = null,
    Object? questionIndex = null,
    Object? score = null,
    Object? answeredQuestions = null,
    Object? correctAnswers = null,
    Object? selectedAnswer = freezed,
    Object? isAnswerSubmitted = null,
    Object? isCompleted = null,
    Object? currentLevel = null,
    Object? progressedLevel = null,
    Object? remainingSeconds = null,
    Object? totalSecondsPerQuestion = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as QuizDifficulty,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestionModel>,
      questionIndex: null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      answeredQuestions: null == answeredQuestions
          ? _value.answeredQuestions
          : answeredQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnswerSubmitted: null == isAnswerSubmitted
          ? _value.isAnswerSubmitted
          : isAnswerSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      progressedLevel: null == progressedLevel
          ? _value.progressedLevel
          : progressedLevel // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalSecondsPerQuestion: null == totalSecondsPerQuestion
          ? _value.totalSecondsPerQuestion
          : totalSecondsPerQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
          _$QuizStateImpl value, $Res Function(_$QuizStateImpl) then) =
      __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStateStatus status,
      QuizOperation operation,
      QuizDifficulty difficulty,
      List<QuizQuestionModel> questions,
      int questionIndex,
      int score,
      int answeredQuestions,
      int correctAnswers,
      int? selectedAnswer,
      bool isAnswerSubmitted,
      bool isCompleted,
      int currentLevel,
      int progressedLevel,
      int remainingSeconds,
      int totalSecondsPerQuestion});
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
      _$QuizStateImpl _value, $Res Function(_$QuizStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? operation = null,
    Object? difficulty = null,
    Object? questions = null,
    Object? questionIndex = null,
    Object? score = null,
    Object? answeredQuestions = null,
    Object? correctAnswers = null,
    Object? selectedAnswer = freezed,
    Object? isAnswerSubmitted = null,
    Object? isCompleted = null,
    Object? currentLevel = null,
    Object? progressedLevel = null,
    Object? remainingSeconds = null,
    Object? totalSecondsPerQuestion = null,
  }) {
    return _then(_$QuizStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as QuizDifficulty,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestionModel>,
      questionIndex: null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      answeredQuestions: null == answeredQuestions
          ? _value.answeredQuestions
          : answeredQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      isAnswerSubmitted: null == isAnswerSubmitted
          ? _value.isAnswerSubmitted
          : isAnswerSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
      progressedLevel: null == progressedLevel
          ? _value.progressedLevel
          : progressedLevel // ignore: cast_nullable_to_non_nullable
              as int,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalSecondsPerQuestion: null == totalSecondsPerQuestion
          ? _value.totalSecondsPerQuestion
          : totalSecondsPerQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuizStateImpl with DiagnosticableTreeMixin implements _QuizState {
  const _$QuizStateImpl(
      {this.status = BaseStateStatus.initial,
      this.operation = QuizOperation.addition,
      this.difficulty = QuizDifficulty.medium,
      final List<QuizQuestionModel> questions = const <QuizQuestionModel>[],
      this.questionIndex = 0,
      this.score = 0,
      this.answeredQuestions = 0,
      this.correctAnswers = 0,
      this.selectedAnswer,
      this.isAnswerSubmitted = false,
      this.isCompleted = false,
      this.currentLevel = 1,
      this.progressedLevel = 1,
      this.remainingSeconds = 0,
      this.totalSecondsPerQuestion = 0})
      : _questions = questions;

  @override
  @JsonKey()
  final BaseStateStatus status;
  @override
  @JsonKey()
  final QuizOperation operation;
  @override
  @JsonKey()
  final QuizDifficulty difficulty;
  final List<QuizQuestionModel> _questions;
  @override
  @JsonKey()
  List<QuizQuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey()
  final int questionIndex;
  @override
  @JsonKey()
  final int score;
  @override
  @JsonKey()
  final int answeredQuestions;
  @override
  @JsonKey()
  final int correctAnswers;
  @override
  final int? selectedAnswer;
  @override
  @JsonKey()
  final bool isAnswerSubmitted;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int currentLevel;
  @override
  @JsonKey()
  final int progressedLevel;
  @override
  @JsonKey()
  final int remainingSeconds;
  @override
  @JsonKey()
  final int totalSecondsPerQuestion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizState(status: $status, operation: $operation, difficulty: $difficulty, questions: $questions, questionIndex: $questionIndex, score: $score, answeredQuestions: $answeredQuestions, correctAnswers: $correctAnswers, selectedAnswer: $selectedAnswer, isAnswerSubmitted: $isAnswerSubmitted, isCompleted: $isCompleted, currentLevel: $currentLevel, progressedLevel: $progressedLevel, remainingSeconds: $remainingSeconds, totalSecondsPerQuestion: $totalSecondsPerQuestion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('operation', operation))
      ..add(DiagnosticsProperty('difficulty', difficulty))
      ..add(DiagnosticsProperty('questions', questions))
      ..add(DiagnosticsProperty('questionIndex', questionIndex))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('answeredQuestions', answeredQuestions))
      ..add(DiagnosticsProperty('correctAnswers', correctAnswers))
      ..add(DiagnosticsProperty('selectedAnswer', selectedAnswer))
      ..add(DiagnosticsProperty('isAnswerSubmitted', isAnswerSubmitted))
      ..add(DiagnosticsProperty('isCompleted', isCompleted))
      ..add(DiagnosticsProperty('currentLevel', currentLevel))
      ..add(DiagnosticsProperty('progressedLevel', progressedLevel))
      ..add(DiagnosticsProperty('remainingSeconds', remainingSeconds))
      ..add(DiagnosticsProperty(
          'totalSecondsPerQuestion', totalSecondsPerQuestion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.answeredQuestions, answeredQuestions) ||
                other.answeredQuestions == answeredQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            (identical(other.isAnswerSubmitted, isAnswerSubmitted) ||
                other.isAnswerSubmitted == isAnswerSubmitted) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel) &&
            (identical(other.progressedLevel, progressedLevel) ||
                other.progressedLevel == progressedLevel) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(
                    other.totalSecondsPerQuestion, totalSecondsPerQuestion) ||
                other.totalSecondsPerQuestion == totalSecondsPerQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      operation,
      difficulty,
      const DeepCollectionEquality().hash(_questions),
      questionIndex,
      score,
      answeredQuestions,
      correctAnswers,
      selectedAnswer,
      isAnswerSubmitted,
      isCompleted,
      currentLevel,
      progressedLevel,
      remainingSeconds,
      totalSecondsPerQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {final BaseStateStatus status,
      final QuizOperation operation,
      final QuizDifficulty difficulty,
      final List<QuizQuestionModel> questions,
      final int questionIndex,
      final int score,
      final int answeredQuestions,
      final int correctAnswers,
      final int? selectedAnswer,
      final bool isAnswerSubmitted,
      final bool isCompleted,
      final int currentLevel,
      final int progressedLevel,
      final int remainingSeconds,
      final int totalSecondsPerQuestion}) = _$QuizStateImpl;

  @override
  BaseStateStatus get status;
  @override
  QuizOperation get operation;
  @override
  QuizDifficulty get difficulty;
  @override
  List<QuizQuestionModel> get questions;
  @override
  int get questionIndex;
  @override
  int get score;
  @override
  int get answeredQuestions;
  @override
  int get correctAnswers;
  @override
  int? get selectedAnswer;
  @override
  bool get isAnswerSubmitted;
  @override
  bool get isCompleted;
  @override
  int get currentLevel;
  @override
  int get progressedLevel;
  @override
  int get remainingSeconds;
  @override
  int get totalSecondsPerQuestion;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
