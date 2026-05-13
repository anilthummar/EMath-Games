// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_screen_local.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StartScreenLocal _$StartScreenLocalFromJson(Map<String, dynamic> json) {
  return _StartScreenLocal.fromJson(json);
}

/// @nodoc
mixin _$StartScreenLocal {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartScreenLocalCopyWith<StartScreenLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartScreenLocalCopyWith<$Res> {
  factory $StartScreenLocalCopyWith(
          StartScreenLocal value, $Res Function(StartScreenLocal) then) =
      _$StartScreenLocalCopyWithImpl<$Res, StartScreenLocal>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$StartScreenLocalCopyWithImpl<$Res, $Val extends StartScreenLocal>
    implements $StartScreenLocalCopyWith<$Res> {
  _$StartScreenLocalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartScreenLocalImplCopyWith<$Res>
    implements $StartScreenLocalCopyWith<$Res> {
  factory _$$StartScreenLocalImplCopyWith(_$StartScreenLocalImpl value,
          $Res Function(_$StartScreenLocalImpl) then) =
      __$$StartScreenLocalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$StartScreenLocalImplCopyWithImpl<$Res>
    extends _$StartScreenLocalCopyWithImpl<$Res, _$StartScreenLocalImpl>
    implements _$$StartScreenLocalImplCopyWith<$Res> {
  __$$StartScreenLocalImplCopyWithImpl(_$StartScreenLocalImpl _value,
      $Res Function(_$StartScreenLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$StartScreenLocalImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StartScreenLocalImpl
    with DiagnosticableTreeMixin
    implements _StartScreenLocal {
  const _$StartScreenLocalImpl({this.email, this.password});

  factory _$StartScreenLocalImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartScreenLocalImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartScreenLocal(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartScreenLocal'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartScreenLocalImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartScreenLocalImplCopyWith<_$StartScreenLocalImpl> get copyWith =>
      __$$StartScreenLocalImplCopyWithImpl<_$StartScreenLocalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StartScreenLocalImplToJson(
      this,
    );
  }
}

abstract class _StartScreenLocal implements StartScreenLocal {
  const factory _StartScreenLocal(
      {final String? email, final String? password}) = _$StartScreenLocalImpl;

  factory _StartScreenLocal.fromJson(Map<String, dynamic> json) =
      _$StartScreenLocalImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$StartScreenLocalImplCopyWith<_$StartScreenLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
