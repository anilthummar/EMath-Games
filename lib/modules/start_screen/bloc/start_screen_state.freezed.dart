// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartScreenState {
  BaseStateStatus get status => throw _privateConstructorUsedError;
  StartScreenLocal get startScreenLocal => throw _privateConstructorUsedError;
  String? get routeName => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartScreenStateCopyWith<StartScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartScreenStateCopyWith<$Res> {
  factory $StartScreenStateCopyWith(
          StartScreenState value, $Res Function(StartScreenState) then) =
      _$StartScreenStateCopyWithImpl<$Res, StartScreenState>;
  @useResult
  $Res call(
      {BaseStateStatus status,
      StartScreenLocal startScreenLocal,
      String? routeName,
      GlobalKey<FormState> formKey,
      String? errorMessage});

  $StartScreenLocalCopyWith<$Res> get startScreenLocal;
}

/// @nodoc
class _$StartScreenStateCopyWithImpl<$Res, $Val extends StartScreenState>
    implements $StartScreenStateCopyWith<$Res> {
  _$StartScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? startScreenLocal = null,
    Object? routeName = freezed,
    Object? formKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      startScreenLocal: null == startScreenLocal
          ? _value.startScreenLocal
          : startScreenLocal // ignore: cast_nullable_to_non_nullable
              as StartScreenLocal,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StartScreenLocalCopyWith<$Res> get startScreenLocal {
    return $StartScreenLocalCopyWith<$Res>(_value.startScreenLocal, (value) {
      return _then(_value.copyWith(startScreenLocal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartScreenStateImplCopyWith<$Res>
    implements $StartScreenStateCopyWith<$Res> {
  factory _$$StartScreenStateImplCopyWith(_$StartScreenStateImpl value,
          $Res Function(_$StartScreenStateImpl) then) =
      __$$StartScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStateStatus status,
      StartScreenLocal startScreenLocal,
      String? routeName,
      GlobalKey<FormState> formKey,
      String? errorMessage});

  @override
  $StartScreenLocalCopyWith<$Res> get startScreenLocal;
}

/// @nodoc
class __$$StartScreenStateImplCopyWithImpl<$Res>
    extends _$StartScreenStateCopyWithImpl<$Res, _$StartScreenStateImpl>
    implements _$$StartScreenStateImplCopyWith<$Res> {
  __$$StartScreenStateImplCopyWithImpl(_$StartScreenStateImpl _value,
      $Res Function(_$StartScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? startScreenLocal = null,
    Object? routeName = freezed,
    Object? formKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$StartScreenStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      startScreenLocal: null == startScreenLocal
          ? _value.startScreenLocal
          : startScreenLocal // ignore: cast_nullable_to_non_nullable
              as StartScreenLocal,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StartScreenStateImpl
    with DiagnosticableTreeMixin
    implements _StartScreenState {
  const _$StartScreenStateImpl(
      {this.status = BaseStateStatus.initial,
      this.startScreenLocal = const StartScreenLocal(),
      this.routeName,
      required this.formKey,
      this.errorMessage});

  @override
  @JsonKey()
  final BaseStateStatus status;
  @override
  @JsonKey()
  final StartScreenLocal startScreenLocal;
  @override
  final String? routeName;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartScreenState(status: $status, startScreenLocal: $startScreenLocal, routeName: $routeName, formKey: $formKey, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartScreenState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('startScreenLocal', startScreenLocal))
      ..add(DiagnosticsProperty('routeName', routeName))
      ..add(DiagnosticsProperty('formKey', formKey))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartScreenStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startScreenLocal, startScreenLocal) ||
                other.startScreenLocal == startScreenLocal) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, startScreenLocal, routeName, formKey, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartScreenStateImplCopyWith<_$StartScreenStateImpl> get copyWith =>
      __$$StartScreenStateImplCopyWithImpl<_$StartScreenStateImpl>(
          this, _$identity);
}

abstract class _StartScreenState implements StartScreenState {
  const factory _StartScreenState(
      {final BaseStateStatus status,
      final StartScreenLocal startScreenLocal,
      final String? routeName,
      required final GlobalKey<FormState> formKey,
      final String? errorMessage}) = _$StartScreenStateImpl;

  @override
  BaseStateStatus get status;
  @override
  StartScreenLocal get startScreenLocal;
  @override
  String? get routeName;
  @override
  GlobalKey<FormState> get formKey;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$StartScreenStateImplCopyWith<_$StartScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
