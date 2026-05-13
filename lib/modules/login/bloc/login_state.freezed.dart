// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  BaseStateStatus get status => throw _privateConstructorUsedError;
  LoginLocal get loginLocal => throw _privateConstructorUsedError;
  String? get routeName => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {BaseStateStatus status,
      LoginLocal loginLocal,
      String? routeName,
      GlobalKey<FormState> formKey,
      String? errorMessage});

  $LoginLocalCopyWith<$Res> get loginLocal;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginLocal = null,
    Object? routeName = freezed,
    Object? formKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      loginLocal: null == loginLocal
          ? _value.loginLocal
          : loginLocal // ignore: cast_nullable_to_non_nullable
              as LoginLocal,
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
  $LoginLocalCopyWith<$Res> get loginLocal {
    return $LoginLocalCopyWith<$Res>(_value.loginLocal, (value) {
      return _then(_value.copyWith(loginLocal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStateStatus status,
      LoginLocal loginLocal,
      String? routeName,
      GlobalKey<FormState> formKey,
      String? errorMessage});

  @override
  $LoginLocalCopyWith<$Res> get loginLocal;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginLocal = null,
    Object? routeName = freezed,
    Object? formKey = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      loginLocal: null == loginLocal
          ? _value.loginLocal
          : loginLocal // ignore: cast_nullable_to_non_nullable
              as LoginLocal,
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

class _$LoginStateImpl with DiagnosticableTreeMixin implements _LoginState {
  const _$LoginStateImpl(
      {this.status = BaseStateStatus.initial,
      this.loginLocal = const LoginLocal(),
      this.routeName,
      required this.formKey,
      this.errorMessage});

  @override
  @JsonKey()
  final BaseStateStatus status;
  @override
  @JsonKey()
  final LoginLocal loginLocal;
  @override
  final String? routeName;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(status: $status, loginLocal: $loginLocal, routeName: $routeName, formKey: $formKey, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('loginLocal', loginLocal))
      ..add(DiagnosticsProperty('routeName', routeName))
      ..add(DiagnosticsProperty('formKey', formKey))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loginLocal, loginLocal) ||
                other.loginLocal == loginLocal) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, loginLocal, routeName, formKey, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final BaseStateStatus status,
      final LoginLocal loginLocal,
      final String? routeName,
      required final GlobalKey<FormState> formKey,
      final String? errorMessage}) = _$LoginStateImpl;

  @override
  BaseStateStatus get status;
  @override
  LoginLocal get loginLocal;
  @override
  String? get routeName;
  @override
  GlobalKey<FormState> get formKey;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
