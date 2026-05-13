// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizQuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get expression => throw _privateConstructorUsedError;
  int get correctAnswer => throw _privateConstructorUsedError;
  List<int> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizQuestionModelCopyWith<QuizQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizQuestionModelCopyWith<$Res> {
  factory $QuizQuestionModelCopyWith(
          QuizQuestionModel value, $Res Function(QuizQuestionModel) then) =
      _$QuizQuestionModelCopyWithImpl<$Res, QuizQuestionModel>;
  @useResult
  $Res call(
      {String id, String expression, int correctAnswer, List<int> options});
}

/// @nodoc
class _$QuizQuestionModelCopyWithImpl<$Res, $Val extends QuizQuestionModel>
    implements $QuizQuestionModelCopyWith<$Res> {
  _$QuizQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expression = null,
    Object? correctAnswer = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizQuestionModelImplCopyWith<$Res>
    implements $QuizQuestionModelCopyWith<$Res> {
  factory _$$QuizQuestionModelImplCopyWith(_$QuizQuestionModelImpl value,
          $Res Function(_$QuizQuestionModelImpl) then) =
      __$$QuizQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String expression, int correctAnswer, List<int> options});
}

/// @nodoc
class __$$QuizQuestionModelImplCopyWithImpl<$Res>
    extends _$QuizQuestionModelCopyWithImpl<$Res, _$QuizQuestionModelImpl>
    implements _$$QuizQuestionModelImplCopyWith<$Res> {
  __$$QuizQuestionModelImplCopyWithImpl(_$QuizQuestionModelImpl _value,
      $Res Function(_$QuizQuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expression = null,
    Object? correctAnswer = null,
    Object? options = null,
  }) {
    return _then(_$QuizQuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expression: null == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$QuizQuestionModelImpl
    with DiagnosticableTreeMixin
    implements _QuizQuestionModel {
  const _$QuizQuestionModelImpl(
      {required this.id,
      required this.expression,
      required this.correctAnswer,
      required final List<int> options})
      : _options = options;

  @override
  final String id;
  @override
  final String expression;
  @override
  final int correctAnswer;
  final List<int> _options;
  @override
  List<int> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizQuestionModel(id: $id, expression: $expression, correctAnswer: $correctAnswer, options: $options)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizQuestionModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('expression', expression))
      ..add(DiagnosticsProperty('correctAnswer', correctAnswer))
      ..add(DiagnosticsProperty('options', options));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, expression, correctAnswer,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizQuestionModelImplCopyWith<_$QuizQuestionModelImpl> get copyWith =>
      __$$QuizQuestionModelImplCopyWithImpl<_$QuizQuestionModelImpl>(
          this, _$identity);
}

abstract class _QuizQuestionModel implements QuizQuestionModel {
  const factory _QuizQuestionModel(
      {required final String id,
      required final String expression,
      required final int correctAnswer,
      required final List<int> options}) = _$QuizQuestionModelImpl;

  @override
  String get id;
  @override
  String get expression;
  @override
  int get correctAnswer;
  @override
  List<int> get options;
  @override
  @JsonKey(ignore: true)
  _$$QuizQuestionModelImplCopyWith<_$QuizQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
