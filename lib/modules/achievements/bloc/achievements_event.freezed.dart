// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievements_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AchievementsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AchievementsStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AchievementsStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AchievementsStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsEventCopyWith<$Res> {
  factory $AchievementsEventCopyWith(
          AchievementsEvent value, $Res Function(AchievementsEvent) then) =
      _$AchievementsEventCopyWithImpl<$Res, AchievementsEvent>;
}

/// @nodoc
class _$AchievementsEventCopyWithImpl<$Res, $Val extends AchievementsEvent>
    implements $AchievementsEventCopyWith<$Res> {
  _$AchievementsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AchievementsStartedImplCopyWith<$Res> {
  factory _$$AchievementsStartedImplCopyWith(_$AchievementsStartedImpl value,
          $Res Function(_$AchievementsStartedImpl) then) =
      __$$AchievementsStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AchievementsStartedImplCopyWithImpl<$Res>
    extends _$AchievementsEventCopyWithImpl<$Res, _$AchievementsStartedImpl>
    implements _$$AchievementsStartedImplCopyWith<$Res> {
  __$$AchievementsStartedImplCopyWithImpl(_$AchievementsStartedImpl _value,
      $Res Function(_$AchievementsStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AchievementsStartedImpl
    with DiagnosticableTreeMixin
    implements AchievementsStarted {
  const _$AchievementsStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AchievementsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AchievementsEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementsStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
    required TResult Function(AchievementsStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AchievementsStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AchievementsStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class AchievementsStarted implements AchievementsEvent {
  const factory AchievementsStarted() = _$AchievementsStartedImpl;
}
