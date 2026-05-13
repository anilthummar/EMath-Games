// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScreenEmailChanged value) emailChanged,
    required TResult Function(StartScreenPasswordChanged value) passwordChanged,
    required TResult Function(StartScreenSubmitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScreenEmailChanged value)? emailChanged,
    TResult? Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult? Function(StartScreenSubmitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScreenEmailChanged value)? emailChanged,
    TResult Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult Function(StartScreenSubmitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartScreenEventCopyWith<$Res> {
  factory $StartScreenEventCopyWith(
          StartScreenEvent value, $Res Function(StartScreenEvent) then) =
      _$StartScreenEventCopyWithImpl<$Res, StartScreenEvent>;
}

/// @nodoc
class _$StartScreenEventCopyWithImpl<$Res, $Val extends StartScreenEvent>
    implements $StartScreenEventCopyWith<$Res> {
  _$StartScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartScreenEmailChangedImplCopyWith<$Res> {
  factory _$$StartScreenEmailChangedImplCopyWith(
          _$StartScreenEmailChangedImpl value,
          $Res Function(_$StartScreenEmailChangedImpl) then) =
      __$$StartScreenEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$StartScreenEmailChangedImplCopyWithImpl<$Res>
    extends _$StartScreenEventCopyWithImpl<$Res, _$StartScreenEmailChangedImpl>
    implements _$$StartScreenEmailChangedImplCopyWith<$Res> {
  __$$StartScreenEmailChangedImplCopyWithImpl(
      _$StartScreenEmailChangedImpl _value,
      $Res Function(_$StartScreenEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$StartScreenEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartScreenEmailChangedImpl
    with DiagnosticableTreeMixin
    implements StartScreenEmailChanged {
  const _$StartScreenEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartScreenEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartScreenEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartScreenEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartScreenEmailChangedImplCopyWith<_$StartScreenEmailChangedImpl>
      get copyWith => __$$StartScreenEmailChangedImplCopyWithImpl<
          _$StartScreenEmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScreenEmailChanged value) emailChanged,
    required TResult Function(StartScreenPasswordChanged value) passwordChanged,
    required TResult Function(StartScreenSubmitted value) submitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScreenEmailChanged value)? emailChanged,
    TResult? Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult? Function(StartScreenSubmitted value)? submitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScreenEmailChanged value)? emailChanged,
    TResult Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult Function(StartScreenSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class StartScreenEmailChanged implements StartScreenEvent {
  const factory StartScreenEmailChanged(final String email) =
      _$StartScreenEmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$StartScreenEmailChangedImplCopyWith<_$StartScreenEmailChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartScreenPasswordChangedImplCopyWith<$Res> {
  factory _$$StartScreenPasswordChangedImplCopyWith(
          _$StartScreenPasswordChangedImpl value,
          $Res Function(_$StartScreenPasswordChangedImpl) then) =
      __$$StartScreenPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$StartScreenPasswordChangedImplCopyWithImpl<$Res>
    extends _$StartScreenEventCopyWithImpl<$Res,
        _$StartScreenPasswordChangedImpl>
    implements _$$StartScreenPasswordChangedImplCopyWith<$Res> {
  __$$StartScreenPasswordChangedImplCopyWithImpl(
      _$StartScreenPasswordChangedImpl _value,
      $Res Function(_$StartScreenPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$StartScreenPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartScreenPasswordChangedImpl
    with DiagnosticableTreeMixin
    implements StartScreenPasswordChanged {
  const _$StartScreenPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartScreenEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartScreenEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartScreenPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartScreenPasswordChangedImplCopyWith<_$StartScreenPasswordChangedImpl>
      get copyWith => __$$StartScreenPasswordChangedImplCopyWithImpl<
          _$StartScreenPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScreenEmailChanged value) emailChanged,
    required TResult Function(StartScreenPasswordChanged value) passwordChanged,
    required TResult Function(StartScreenSubmitted value) submitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScreenEmailChanged value)? emailChanged,
    TResult? Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult? Function(StartScreenSubmitted value)? submitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScreenEmailChanged value)? emailChanged,
    TResult Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult Function(StartScreenSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class StartScreenPasswordChanged implements StartScreenEvent {
  const factory StartScreenPasswordChanged(final String password) =
      _$StartScreenPasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$StartScreenPasswordChangedImplCopyWith<_$StartScreenPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartScreenSubmittedImplCopyWith<$Res> {
  factory _$$StartScreenSubmittedImplCopyWith(_$StartScreenSubmittedImpl value,
          $Res Function(_$StartScreenSubmittedImpl) then) =
      __$$StartScreenSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartScreenSubmittedImplCopyWithImpl<$Res>
    extends _$StartScreenEventCopyWithImpl<$Res, _$StartScreenSubmittedImpl>
    implements _$$StartScreenSubmittedImplCopyWith<$Res> {
  __$$StartScreenSubmittedImplCopyWithImpl(_$StartScreenSubmittedImpl _value,
      $Res Function(_$StartScreenSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartScreenSubmittedImpl
    with DiagnosticableTreeMixin
    implements StartScreenSubmitted {
  const _$StartScreenSubmittedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartScreenEvent.submitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StartScreenEvent.submitted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartScreenSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScreenEmailChanged value) emailChanged,
    required TResult Function(StartScreenPasswordChanged value) passwordChanged,
    required TResult Function(StartScreenSubmitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScreenEmailChanged value)? emailChanged,
    TResult? Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult? Function(StartScreenSubmitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScreenEmailChanged value)? emailChanged,
    TResult Function(StartScreenPasswordChanged value)? passwordChanged,
    TResult Function(StartScreenSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class StartScreenSubmitted implements StartScreenEvent {
  const factory StartScreenSubmitted() = _$StartScreenSubmittedImpl;
}
