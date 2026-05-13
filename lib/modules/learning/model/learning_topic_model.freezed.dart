// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_topic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearningTopicModel {
  QuizOperation get operation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningTopicModelCopyWith<LearningTopicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningTopicModelCopyWith<$Res> {
  factory $LearningTopicModelCopyWith(
          LearningTopicModel value, $Res Function(LearningTopicModel) then) =
      _$LearningTopicModelCopyWithImpl<$Res, LearningTopicModel>;
  @useResult
  $Res call({QuizOperation operation});
}

/// @nodoc
class _$LearningTopicModelCopyWithImpl<$Res, $Val extends LearningTopicModel>
    implements $LearningTopicModelCopyWith<$Res> {
  _$LearningTopicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
  }) {
    return _then(_value.copyWith(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningTopicModelImplCopyWith<$Res>
    implements $LearningTopicModelCopyWith<$Res> {
  factory _$$LearningTopicModelImplCopyWith(_$LearningTopicModelImpl value,
          $Res Function(_$LearningTopicModelImpl) then) =
      __$$LearningTopicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuizOperation operation});
}

/// @nodoc
class __$$LearningTopicModelImplCopyWithImpl<$Res>
    extends _$LearningTopicModelCopyWithImpl<$Res, _$LearningTopicModelImpl>
    implements _$$LearningTopicModelImplCopyWith<$Res> {
  __$$LearningTopicModelImplCopyWithImpl(_$LearningTopicModelImpl _value,
      $Res Function(_$LearningTopicModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operation = null,
  }) {
    return _then(_$LearningTopicModelImpl(
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as QuizOperation,
    ));
  }
}

/// @nodoc

class _$LearningTopicModelImpl
    with DiagnosticableTreeMixin
    implements _LearningTopicModel {
  const _$LearningTopicModelImpl({required this.operation});

  @override
  final QuizOperation operation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LearningTopicModel(operation: $operation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LearningTopicModel'))
      ..add(DiagnosticsProperty('operation', operation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningTopicModelImpl &&
            (identical(other.operation, operation) ||
                other.operation == operation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningTopicModelImplCopyWith<_$LearningTopicModelImpl> get copyWith =>
      __$$LearningTopicModelImplCopyWithImpl<_$LearningTopicModelImpl>(
          this, _$identity);
}

abstract class _LearningTopicModel implements LearningTopicModel {
  const factory _LearningTopicModel({required final QuizOperation operation}) =
      _$LearningTopicModelImpl;

  @override
  QuizOperation get operation;
  @override
  @JsonKey(ignore: true)
  _$$LearningTopicModelImplCopyWith<_$LearningTopicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
