// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res, QuizEvent>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res, $Val extends QuizEvent>
    implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuizStartedImplCopyWith<$Res> {
  factory _$$QuizStartedImplCopyWith(
          _$QuizStartedImpl value, $Res Function(_$QuizStartedImpl) then) =
      __$$QuizStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizOperation operation, QuizDifficulty difficulty});
}

/// @nodoc
class __$$QuizStartedImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizStartedImpl>
    implements _$$QuizStartedImplCopyWith<$Res> {
  __$$QuizStartedImplCopyWithImpl(
      _$QuizStartedImpl _value, $Res Function(_$QuizStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
    Object? difficulty = null,
  }) {
    return _then(_$QuizStartedImpl(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as QuizDifficulty,
    ));
  }
}

/// @nodoc

class _$QuizStartedImpl with DiagnosticableTreeMixin implements QuizStarted {
  const _$QuizStartedImpl({required this.operation, required this.difficulty});

  @override
  final QuizOperation operation;
  @override
  final QuizDifficulty difficulty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.started(operation: $operation, difficulty: $difficulty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizEvent.started'))
      ..add(DiagnosticsProperty('operation', operation))
      ..add(DiagnosticsProperty('difficulty', difficulty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStartedImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation, difficulty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStartedImplCopyWith<_$QuizStartedImpl> get copyWith =>
      __$$QuizStartedImplCopyWithImpl<_$QuizStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return started(operation, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return started?.call(operation, difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(operation, difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class QuizStarted implements QuizEvent {
  const factory QuizStarted(
      {required final QuizOperation operation,
      required final QuizDifficulty difficulty}) = _$QuizStartedImpl;

  QuizOperation get operation;
  QuizDifficulty get difficulty;
  @JsonKey(ignore: true)
  _$$QuizStartedImplCopyWith<_$QuizStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizAnswerSelectedImplCopyWith<$Res> {
  factory _$$QuizAnswerSelectedImplCopyWith(_$QuizAnswerSelectedImpl value,
          $Res Function(_$QuizAnswerSelectedImpl) then) =
      __$$QuizAnswerSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int answer});
}

/// @nodoc
class __$$QuizAnswerSelectedImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizAnswerSelectedImpl>
    implements _$$QuizAnswerSelectedImplCopyWith<$Res> {
  __$$QuizAnswerSelectedImplCopyWithImpl(_$QuizAnswerSelectedImpl _value,
      $Res Function(_$QuizAnswerSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$QuizAnswerSelectedImpl(
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuizAnswerSelectedImpl
    with DiagnosticableTreeMixin
    implements QuizAnswerSelected {
  const _$QuizAnswerSelectedImpl(this.answer);

  @override
  final int answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.answerSelected(answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizEvent.answerSelected'))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAnswerSelectedImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizAnswerSelectedImplCopyWith<_$QuizAnswerSelectedImpl> get copyWith =>
      __$$QuizAnswerSelectedImplCopyWithImpl<_$QuizAnswerSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return answerSelected(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return answerSelected?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return answerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class QuizAnswerSelected implements QuizEvent {
  const factory QuizAnswerSelected(final int answer) = _$QuizAnswerSelectedImpl;

  int get answer;
  @JsonKey(ignore: true)
  _$$QuizAnswerSelectedImplCopyWith<_$QuizAnswerSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuizAnswerSubmittedImplCopyWith<$Res> {
  factory _$$QuizAnswerSubmittedImplCopyWith(_$QuizAnswerSubmittedImpl value,
          $Res Function(_$QuizAnswerSubmittedImpl) then) =
      __$$QuizAnswerSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizAnswerSubmittedImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizAnswerSubmittedImpl>
    implements _$$QuizAnswerSubmittedImplCopyWith<$Res> {
  __$$QuizAnswerSubmittedImplCopyWithImpl(_$QuizAnswerSubmittedImpl _value,
      $Res Function(_$QuizAnswerSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizAnswerSubmittedImpl
    with DiagnosticableTreeMixin
    implements QuizAnswerSubmitted {
  const _$QuizAnswerSubmittedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.answerSubmitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QuizEvent.answerSubmitted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizAnswerSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return answerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return answerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return answerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return answerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (answerSubmitted != null) {
      return answerSubmitted(this);
    }
    return orElse();
  }
}

abstract class QuizAnswerSubmitted implements QuizEvent {
  const factory QuizAnswerSubmitted() = _$QuizAnswerSubmittedImpl;
}

/// @nodoc
abstract class _$$QuizNextQuestionImplCopyWith<$Res> {
  factory _$$QuizNextQuestionImplCopyWith(_$QuizNextQuestionImpl value,
          $Res Function(_$QuizNextQuestionImpl) then) =
      __$$QuizNextQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizNextQuestionImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizNextQuestionImpl>
    implements _$$QuizNextQuestionImplCopyWith<$Res> {
  __$$QuizNextQuestionImplCopyWithImpl(_$QuizNextQuestionImpl _value,
      $Res Function(_$QuizNextQuestionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizNextQuestionImpl
    with DiagnosticableTreeMixin
    implements QuizNextQuestion {
  const _$QuizNextQuestionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.nextQuestion()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QuizEvent.nextQuestion'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizNextQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return nextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return nextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class QuizNextQuestion implements QuizEvent {
  const factory QuizNextQuestion() = _$QuizNextQuestionImpl;
}

/// @nodoc
abstract class _$$QuizTimerTickedImplCopyWith<$Res> {
  factory _$$QuizTimerTickedImplCopyWith(_$QuizTimerTickedImpl value,
          $Res Function(_$QuizTimerTickedImpl) then) =
      __$$QuizTimerTickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizTimerTickedImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizTimerTickedImpl>
    implements _$$QuizTimerTickedImplCopyWith<$Res> {
  __$$QuizTimerTickedImplCopyWithImpl(
      _$QuizTimerTickedImpl _value, $Res Function(_$QuizTimerTickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizTimerTickedImpl
    with DiagnosticableTreeMixin
    implements QuizTimerTicked {
  const _$QuizTimerTickedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.timerTicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QuizEvent.timerTicked'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizTimerTickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return timerTicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return timerTicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class QuizTimerTicked implements QuizEvent {
  const factory QuizTimerTicked() = _$QuizTimerTickedImpl;
}

/// @nodoc
abstract class _$$QuizTimerExpiredImplCopyWith<$Res> {
  factory _$$QuizTimerExpiredImplCopyWith(_$QuizTimerExpiredImpl value,
          $Res Function(_$QuizTimerExpiredImpl) then) =
      __$$QuizTimerExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizTimerExpiredImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizTimerExpiredImpl>
    implements _$$QuizTimerExpiredImplCopyWith<$Res> {
  __$$QuizTimerExpiredImplCopyWithImpl(_$QuizTimerExpiredImpl _value,
      $Res Function(_$QuizTimerExpiredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizTimerExpiredImpl
    with DiagnosticableTreeMixin
    implements QuizTimerExpired {
  const _$QuizTimerExpiredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.timerExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QuizEvent.timerExpired'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizTimerExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return timerExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return timerExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (timerExpired != null) {
      return timerExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return timerExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return timerExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (timerExpired != null) {
      return timerExpired(this);
    }
    return orElse();
  }
}

abstract class QuizTimerExpired implements QuizEvent {
  const factory QuizTimerExpired() = _$QuizTimerExpiredImpl;
}

/// @nodoc
abstract class _$$QuizRestartedImplCopyWith<$Res> {
  factory _$$QuizRestartedImplCopyWith(
          _$QuizRestartedImpl value, $Res Function(_$QuizRestartedImpl) then) =
      __$$QuizRestartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizRestartedImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizRestartedImpl>
    implements _$$QuizRestartedImplCopyWith<$Res> {
  __$$QuizRestartedImplCopyWithImpl(
      _$QuizRestartedImpl _value, $Res Function(_$QuizRestartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuizRestartedImpl
    with DiagnosticableTreeMixin
    implements QuizRestarted {
  const _$QuizRestartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizEvent.restarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QuizEvent.restarted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizRestartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuizOperation operation, QuizDifficulty difficulty)
        started,
    required TResult Function(int answer) answerSelected,
    required TResult Function() answerSubmitted,
    required TResult Function() nextQuestion,
    required TResult Function() timerTicked,
    required TResult Function() timerExpired,
    required TResult Function() restarted,
  }) {
    return restarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult? Function(int answer)? answerSelected,
    TResult? Function()? answerSubmitted,
    TResult? Function()? nextQuestion,
    TResult? Function()? timerTicked,
    TResult? Function()? timerExpired,
    TResult? Function()? restarted,
  }) {
    return restarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizOperation operation, QuizDifficulty difficulty)?
        started,
    TResult Function(int answer)? answerSelected,
    TResult Function()? answerSubmitted,
    TResult Function()? nextQuestion,
    TResult Function()? timerTicked,
    TResult Function()? timerExpired,
    TResult Function()? restarted,
    required TResult orElse(),
  }) {
    if (restarted != null) {
      return restarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizStarted value) started,
    required TResult Function(QuizAnswerSelected value) answerSelected,
    required TResult Function(QuizAnswerSubmitted value) answerSubmitted,
    required TResult Function(QuizNextQuestion value) nextQuestion,
    required TResult Function(QuizTimerTicked value) timerTicked,
    required TResult Function(QuizTimerExpired value) timerExpired,
    required TResult Function(QuizRestarted value) restarted,
  }) {
    return restarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizStarted value)? started,
    TResult? Function(QuizAnswerSelected value)? answerSelected,
    TResult? Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult? Function(QuizNextQuestion value)? nextQuestion,
    TResult? Function(QuizTimerTicked value)? timerTicked,
    TResult? Function(QuizTimerExpired value)? timerExpired,
    TResult? Function(QuizRestarted value)? restarted,
  }) {
    return restarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizStarted value)? started,
    TResult Function(QuizAnswerSelected value)? answerSelected,
    TResult Function(QuizAnswerSubmitted value)? answerSubmitted,
    TResult Function(QuizNextQuestion value)? nextQuestion,
    TResult Function(QuizTimerTicked value)? timerTicked,
    TResult Function(QuizTimerExpired value)? timerExpired,
    TResult Function(QuizRestarted value)? restarted,
    required TResult orElse(),
  }) {
    if (restarted != null) {
      return restarted(this);
    }
    return orElse();
  }
}

abstract class QuizRestarted implements QuizEvent {
  const factory QuizRestarted() = _$QuizRestartedImpl;
}
