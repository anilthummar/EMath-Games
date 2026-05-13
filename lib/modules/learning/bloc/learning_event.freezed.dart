// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuizOperation operation) topicSelected,
    required TResult Function(QuizDifficulty difficulty) difficultySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuizOperation operation)? topicSelected,
    TResult? Function(QuizDifficulty difficulty)? difficultySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuizOperation operation)? topicSelected,
    TResult Function(QuizDifficulty difficulty)? difficultySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LearningStarted value) started,
    required TResult Function(LearningTopicSelected value) topicSelected,
    required TResult Function(LearningDifficultySelected value)
        difficultySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LearningStarted value)? started,
    TResult? Function(LearningTopicSelected value)? topicSelected,
    TResult? Function(LearningDifficultySelected value)? difficultySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LearningStarted value)? started,
    TResult Function(LearningTopicSelected value)? topicSelected,
    TResult Function(LearningDifficultySelected value)? difficultySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningEventCopyWith<$Res> {
  factory $LearningEventCopyWith(
          LearningEvent value, $Res Function(LearningEvent) then) =
      _$LearningEventCopyWithImpl<$Res, LearningEvent>;
}

/// @nodoc
class _$LearningEventCopyWithImpl<$Res, $Val extends LearningEvent>
    implements $LearningEventCopyWith<$Res> {
  _$LearningEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LearningStartedImplCopyWith<$Res> {
  factory _$$LearningStartedImplCopyWith(_$LearningStartedImpl value,
          $Res Function(_$LearningStartedImpl) then) =
      __$$LearningStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LearningStartedImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$LearningStartedImpl>
    implements _$$LearningStartedImplCopyWith<$Res> {
  __$$LearningStartedImplCopyWithImpl(
      _$LearningStartedImpl _value, $Res Function(_$LearningStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LearningStartedImpl
    with DiagnosticableTreeMixin
    implements LearningStarted {
  const _$LearningStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LearningEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LearningStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuizOperation operation) topicSelected,
    required TResult Function(QuizDifficulty difficulty) difficultySelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuizOperation operation)? topicSelected,
    TResult? Function(QuizDifficulty difficulty)? difficultySelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuizOperation operation)? topicSelected,
    TResult Function(QuizDifficulty difficulty)? difficultySelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LearningStarted value) started,
    required TResult Function(LearningTopicSelected value) topicSelected,
    required TResult Function(LearningDifficultySelected value)
        difficultySelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LearningStarted value)? started,
    TResult? Function(LearningTopicSelected value)? topicSelected,
    TResult? Function(LearningDifficultySelected value)? difficultySelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LearningStarted value)? started,
    TResult Function(LearningTopicSelected value)? topicSelected,
    TResult Function(LearningDifficultySelected value)? difficultySelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class LearningStarted implements LearningEvent {
  const factory LearningStarted() = _$LearningStartedImpl;
}

/// @nodoc
abstract class _$$LearningTopicSelectedImplCopyWith<$Res> {
  factory _$$LearningTopicSelectedImplCopyWith(
          _$LearningTopicSelectedImpl value,
          $Res Function(_$LearningTopicSelectedImpl) then) =
      __$$LearningTopicSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizOperation operation});
}

/// @nodoc
class __$$LearningTopicSelectedImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$LearningTopicSelectedImpl>
    implements _$$LearningTopicSelectedImplCopyWith<$Res> {
  __$$LearningTopicSelectedImplCopyWithImpl(_$LearningTopicSelectedImpl _value,
      $Res Function(_$LearningTopicSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
  }) {
    return _then(_$LearningTopicSelectedImpl(
      null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
    ));
  }
}

/// @nodoc

class _$LearningTopicSelectedImpl
    with DiagnosticableTreeMixin
    implements LearningTopicSelected {
  const _$LearningTopicSelectedImpl(this.operation);

  @override
  final QuizOperation operation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.topicSelected(operation: $operation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.topicSelected'))
      ..add(DiagnosticsProperty('operation', operation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningTopicSelectedImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningTopicSelectedImplCopyWith<_$LearningTopicSelectedImpl>
      get copyWith => __$$LearningTopicSelectedImplCopyWithImpl<
          _$LearningTopicSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuizOperation operation) topicSelected,
    required TResult Function(QuizDifficulty difficulty) difficultySelected,
  }) {
    return topicSelected(operation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuizOperation operation)? topicSelected,
    TResult? Function(QuizDifficulty difficulty)? difficultySelected,
  }) {
    return topicSelected?.call(operation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuizOperation operation)? topicSelected,
    TResult Function(QuizDifficulty difficulty)? difficultySelected,
    required TResult orElse(),
  }) {
    if (topicSelected != null) {
      return topicSelected(operation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LearningStarted value) started,
    required TResult Function(LearningTopicSelected value) topicSelected,
    required TResult Function(LearningDifficultySelected value)
        difficultySelected,
  }) {
    return topicSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LearningStarted value)? started,
    TResult? Function(LearningTopicSelected value)? topicSelected,
    TResult? Function(LearningDifficultySelected value)? difficultySelected,
  }) {
    return topicSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LearningStarted value)? started,
    TResult Function(LearningTopicSelected value)? topicSelected,
    TResult Function(LearningDifficultySelected value)? difficultySelected,
    required TResult orElse(),
  }) {
    if (topicSelected != null) {
      return topicSelected(this);
    }
    return orElse();
  }
}

abstract class LearningTopicSelected implements LearningEvent {
  const factory LearningTopicSelected(final QuizOperation operation) =
      _$LearningTopicSelectedImpl;

  QuizOperation get operation;
  @JsonKey(ignore: true)
  _$$LearningTopicSelectedImplCopyWith<_$LearningTopicSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearningDifficultySelectedImplCopyWith<$Res> {
  factory _$$LearningDifficultySelectedImplCopyWith(
          _$LearningDifficultySelectedImpl value,
          $Res Function(_$LearningDifficultySelectedImpl) then) =
      __$$LearningDifficultySelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizDifficulty difficulty});
}

/// @nodoc
class __$$LearningDifficultySelectedImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$LearningDifficultySelectedImpl>
    implements _$$LearningDifficultySelectedImplCopyWith<$Res> {
  __$$LearningDifficultySelectedImplCopyWithImpl(
      _$LearningDifficultySelectedImpl _value,
      $Res Function(_$LearningDifficultySelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? difficulty = null,
  }) {
    return _then(_$LearningDifficultySelectedImpl(
      null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as QuizDifficulty,
    ));
  }
}

/// @nodoc

class _$LearningDifficultySelectedImpl
    with DiagnosticableTreeMixin
    implements LearningDifficultySelected {
  const _$LearningDifficultySelectedImpl(this.difficulty);

  @override
  final QuizDifficulty difficulty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningEvent.difficultySelected(difficulty: $difficulty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningEvent.difficultySelected'))
      ..add(DiagnosticsProperty('difficulty', difficulty));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningDifficultySelectedImpl &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, difficulty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningDifficultySelectedImplCopyWith<_$LearningDifficultySelectedImpl>
      get copyWith => __$$LearningDifficultySelectedImplCopyWithImpl<
          _$LearningDifficultySelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuizOperation operation) topicSelected,
    required TResult Function(QuizDifficulty difficulty) difficultySelected,
  }) {
    return difficultySelected(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuizOperation operation)? topicSelected,
    TResult? Function(QuizDifficulty difficulty)? difficultySelected,
  }) {
    return difficultySelected?.call(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuizOperation operation)? topicSelected,
    TResult Function(QuizDifficulty difficulty)? difficultySelected,
    required TResult orElse(),
  }) {
    if (difficultySelected != null) {
      return difficultySelected(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LearningStarted value) started,
    required TResult Function(LearningTopicSelected value) topicSelected,
    required TResult Function(LearningDifficultySelected value)
        difficultySelected,
  }) {
    return difficultySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LearningStarted value)? started,
    TResult? Function(LearningTopicSelected value)? topicSelected,
    TResult? Function(LearningDifficultySelected value)? difficultySelected,
  }) {
    return difficultySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LearningStarted value)? started,
    TResult Function(LearningTopicSelected value)? topicSelected,
    TResult Function(LearningDifficultySelected value)? difficultySelected,
    required TResult orElse(),
  }) {
    if (difficultySelected != null) {
      return difficultySelected(this);
    }
    return orElse();
  }
}

abstract class LearningDifficultySelected implements LearningEvent {
  const factory LearningDifficultySelected(final QuizDifficulty difficulty) =
      _$LearningDifficultySelectedImpl;

  QuizDifficulty get difficulty;
  @JsonKey(ignore: true)
  _$$LearningDifficultySelectedImplCopyWith<_$LearningDifficultySelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
