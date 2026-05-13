// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String languageCode) languageChanged,
    required TResult Function(bool isEnabled) soundToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String languageCode)? languageChanged,
    TResult? Function(bool isEnabled)? soundToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String languageCode)? languageChanged,
    TResult Function(bool isEnabled)? soundToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStarted value) started,
    required TResult Function(SettingsLanguageChanged value) languageChanged,
    required TResult Function(SettingsSoundToggled value) soundToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStarted value)? started,
    TResult? Function(SettingsLanguageChanged value)? languageChanged,
    TResult? Function(SettingsSoundToggled value)? soundToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStarted value)? started,
    TResult Function(SettingsLanguageChanged value)? languageChanged,
    TResult Function(SettingsSoundToggled value)? soundToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsStartedImplCopyWith<$Res> {
  factory _$$SettingsStartedImplCopyWith(_$SettingsStartedImpl value,
          $Res Function(_$SettingsStartedImpl) then) =
      __$$SettingsStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsStartedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsStartedImpl>
    implements _$$SettingsStartedImplCopyWith<$Res> {
  __$$SettingsStartedImplCopyWithImpl(
      _$SettingsStartedImpl _value, $Res Function(_$SettingsStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsStartedImpl
    with DiagnosticableTreeMixin
    implements SettingsStarted {
  const _$SettingsStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String languageCode) languageChanged,
    required TResult Function(bool isEnabled) soundToggled,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String languageCode)? languageChanged,
    TResult? Function(bool isEnabled)? soundToggled,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String languageCode)? languageChanged,
    TResult Function(bool isEnabled)? soundToggled,
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
    required TResult Function(SettingsStarted value) started,
    required TResult Function(SettingsLanguageChanged value) languageChanged,
    required TResult Function(SettingsSoundToggled value) soundToggled,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStarted value)? started,
    TResult? Function(SettingsLanguageChanged value)? languageChanged,
    TResult? Function(SettingsSoundToggled value)? soundToggled,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStarted value)? started,
    TResult Function(SettingsLanguageChanged value)? languageChanged,
    TResult Function(SettingsSoundToggled value)? soundToggled,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SettingsStarted implements SettingsEvent {
  const factory SettingsStarted() = _$SettingsStartedImpl;
}

/// @nodoc
abstract class _$$SettingsLanguageChangedImplCopyWith<$Res> {
  factory _$$SettingsLanguageChangedImplCopyWith(
          _$SettingsLanguageChangedImpl value,
          $Res Function(_$SettingsLanguageChangedImpl) then) =
      __$$SettingsLanguageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$SettingsLanguageChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsLanguageChangedImpl>
    implements _$$SettingsLanguageChangedImplCopyWith<$Res> {
  __$$SettingsLanguageChangedImplCopyWithImpl(
      _$SettingsLanguageChangedImpl _value,
      $Res Function(_$SettingsLanguageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$SettingsLanguageChangedImpl(
      null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsLanguageChangedImpl
    with DiagnosticableTreeMixin
    implements SettingsLanguageChanged {
  const _$SettingsLanguageChangedImpl(this.languageCode);

  @override
  final String languageCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.languageChanged(languageCode: $languageCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.languageChanged'))
      ..add(DiagnosticsProperty('languageCode', languageCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLanguageChangedImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLanguageChangedImplCopyWith<_$SettingsLanguageChangedImpl>
      get copyWith => __$$SettingsLanguageChangedImplCopyWithImpl<
          _$SettingsLanguageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String languageCode) languageChanged,
    required TResult Function(bool isEnabled) soundToggled,
  }) {
    return languageChanged(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String languageCode)? languageChanged,
    TResult? Function(bool isEnabled)? soundToggled,
  }) {
    return languageChanged?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String languageCode)? languageChanged,
    TResult Function(bool isEnabled)? soundToggled,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStarted value) started,
    required TResult Function(SettingsLanguageChanged value) languageChanged,
    required TResult Function(SettingsSoundToggled value) soundToggled,
  }) {
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStarted value)? started,
    TResult? Function(SettingsLanguageChanged value)? languageChanged,
    TResult? Function(SettingsSoundToggled value)? soundToggled,
  }) {
    return languageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStarted value)? started,
    TResult Function(SettingsLanguageChanged value)? languageChanged,
    TResult Function(SettingsSoundToggled value)? soundToggled,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsLanguageChanged implements SettingsEvent {
  const factory SettingsLanguageChanged(final String languageCode) =
      _$SettingsLanguageChangedImpl;

  String get languageCode;
  @JsonKey(ignore: true)
  _$$SettingsLanguageChangedImplCopyWith<_$SettingsLanguageChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsSoundToggledImplCopyWith<$Res> {
  factory _$$SettingsSoundToggledImplCopyWith(_$SettingsSoundToggledImpl value,
          $Res Function(_$SettingsSoundToggledImpl) then) =
      __$$SettingsSoundToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEnabled});
}

/// @nodoc
class __$$SettingsSoundToggledImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsSoundToggledImpl>
    implements _$$SettingsSoundToggledImplCopyWith<$Res> {
  __$$SettingsSoundToggledImplCopyWithImpl(_$SettingsSoundToggledImpl _value,
      $Res Function(_$SettingsSoundToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
  }) {
    return _then(_$SettingsSoundToggledImpl(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsSoundToggledImpl
    with DiagnosticableTreeMixin
    implements SettingsSoundToggled {
  const _$SettingsSoundToggledImpl({required this.isEnabled});

  @override
  final bool isEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.soundToggled(isEnabled: $isEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.soundToggled'))
      ..add(DiagnosticsProperty('isEnabled', isEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsSoundToggledImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsSoundToggledImplCopyWith<_$SettingsSoundToggledImpl>
      get copyWith =>
          __$$SettingsSoundToggledImplCopyWithImpl<_$SettingsSoundToggledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String languageCode) languageChanged,
    required TResult Function(bool isEnabled) soundToggled,
  }) {
    return soundToggled(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String languageCode)? languageChanged,
    TResult? Function(bool isEnabled)? soundToggled,
  }) {
    return soundToggled?.call(isEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String languageCode)? languageChanged,
    TResult Function(bool isEnabled)? soundToggled,
    required TResult orElse(),
  }) {
    if (soundToggled != null) {
      return soundToggled(isEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsStarted value) started,
    required TResult Function(SettingsLanguageChanged value) languageChanged,
    required TResult Function(SettingsSoundToggled value) soundToggled,
  }) {
    return soundToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsStarted value)? started,
    TResult? Function(SettingsLanguageChanged value)? languageChanged,
    TResult? Function(SettingsSoundToggled value)? soundToggled,
  }) {
    return soundToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsStarted value)? started,
    TResult Function(SettingsLanguageChanged value)? languageChanged,
    TResult Function(SettingsSoundToggled value)? soundToggled,
    required TResult orElse(),
  }) {
    if (soundToggled != null) {
      return soundToggled(this);
    }
    return orElse();
  }
}

abstract class SettingsSoundToggled implements SettingsEvent {
  const factory SettingsSoundToggled({required final bool isEnabled}) =
      _$SettingsSoundToggledImpl;

  bool get isEnabled;
  @JsonKey(ignore: true)
  _$$SettingsSoundToggledImplCopyWith<_$SettingsSoundToggledImpl>
      get copyWith => throw _privateConstructorUsedError;
}
