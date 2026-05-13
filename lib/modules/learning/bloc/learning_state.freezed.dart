// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearningState {
  BaseStateStatus get status => throw _privateConstructorUsedError;
  List<LearningTopicModel> get topics => throw _privateConstructorUsedError;
  QuizOperation get selectedOperation => throw _privateConstructorUsedError;
  QuizDifficulty get selectedDifficulty => throw _privateConstructorUsedError;
  int get currentLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningStateCopyWith<LearningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningStateCopyWith<$Res> {
  factory $LearningStateCopyWith(
          LearningState value, $Res Function(LearningState) then) =
      _$LearningStateCopyWithImpl<$Res, LearningState>;
  @useResult
  $Res call(
      {BaseStateStatus status,
      List<LearningTopicModel> topics,
      QuizOperation selectedOperation,
      QuizDifficulty selectedDifficulty,
      int currentLevel});
}

/// @nodoc
class _$LearningStateCopyWithImpl<$Res, $Val extends LearningState>
    implements $LearningStateCopyWith<$Res> {
  _$LearningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? topics = null,
    Object? selectedOperation = null,
    Object? selectedDifficulty = null,
    Object? currentLevel = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<LearningTopicModel>,
      selectedOperation: null == selectedOperation
          ? _value.selectedOperation
          : selectedOperation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
      selectedDifficulty: null == selectedDifficulty
          ? _value.selectedDifficulty
          : selectedDifficulty // ignore: cast_nullable_to_non_nullable
              as QuizDifficulty,
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningStateImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningStateImplCopyWith(
          _$LearningStateImpl value, $Res Function(_$LearningStateImpl) then) =
      __$$LearningStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStateStatus status,
      List<LearningTopicModel> topics,
      QuizOperation selectedOperation,
      QuizDifficulty selectedDifficulty,
      int currentLevel});
}

/// @nodoc
class __$$LearningStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningStateImpl>
    implements _$$LearningStateImplCopyWith<$Res> {
  __$$LearningStateImplCopyWithImpl(
      _$LearningStateImpl _value, $Res Function(_$LearningStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? topics = null,
    Object? selectedOperation = null,
    Object? selectedDifficulty = null,
    Object? currentLevel = null,
  }) {
    return _then(_$LearningStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<LearningTopicModel>,
      selectedOperation: null == selectedOperation
          ? _value.selectedOperation
          : selectedOperation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
      selectedDifficulty: null == selectedDifficulty
          ? _value.selectedDifficulty
          : selectedDifficulty // ignore: cast_nullable_to_non_nullable
              as QuizDifficulty,
      currentLevel: null == currentLevel
          ? _value.currentLevel
          : currentLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LearningStateImpl
    with DiagnosticableTreeMixin
    implements _LearningState {
  const _$LearningStateImpl(
      {this.status = BaseStateStatus.initial,
      final List<LearningTopicModel> topics = const <LearningTopicModel>[],
      this.selectedOperation = QuizOperation.addition,
      this.selectedDifficulty = QuizDifficulty.medium,
      this.currentLevel = 1})
      : _topics = topics;

  @override
  @JsonKey()
  final BaseStateStatus status;
  final List<LearningTopicModel> _topics;
  @override
  @JsonKey()
  List<LearningTopicModel> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @JsonKey()
  final QuizOperation selectedOperation;
  @override
  @JsonKey()
  final QuizDifficulty selectedDifficulty;
  @override
  @JsonKey()
  final int currentLevel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningState(status: $status, topics: $topics, selectedOperation: $selectedOperation, selectedDifficulty: $selectedDifficulty, currentLevel: $currentLevel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('topics', topics))
      ..add(DiagnosticsProperty('selectedOperation', selectedOperation))
      ..add(DiagnosticsProperty('selectedDifficulty', selectedDifficulty))
      ..add(DiagnosticsProperty('currentLevel', currentLevel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.selectedOperation, selectedOperation) ||
                other.selectedOperation == selectedOperation) &&
            (identical(other.selectedDifficulty, selectedDifficulty) ||
                other.selectedDifficulty == selectedDifficulty) &&
            (identical(other.currentLevel, currentLevel) ||
                other.currentLevel == currentLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_topics),
      selectedOperation,
      selectedDifficulty,
      currentLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningStateImplCopyWith<_$LearningStateImpl> get copyWith =>
      __$$LearningStateImplCopyWithImpl<_$LearningStateImpl>(this, _$identity);
}

abstract class _LearningState implements LearningState {
  const factory _LearningState(
      {final BaseStateStatus status,
      final List<LearningTopicModel> topics,
      final QuizOperation selectedOperation,
      final QuizDifficulty selectedDifficulty,
      final int currentLevel}) = _$LearningStateImpl;

  @override
  BaseStateStatus get status;
  @override
  List<LearningTopicModel> get topics;
  @override
  QuizOperation get selectedOperation;
  @override
  QuizDifficulty get selectedDifficulty;
  @override
  int get currentLevel;
  @override
  @JsonKey(ignore: true)
  _$$LearningStateImplCopyWith<_$LearningStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
