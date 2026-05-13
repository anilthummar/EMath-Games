// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStarted value) started,
    required TResult Function(DashboardTabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStarted value)? started,
    TResult? Function(DashboardTabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStarted value)? started,
    TResult Function(DashboardTabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DashboardStartedImplCopyWith<$Res> {
  factory _$$DashboardStartedImplCopyWith(_$DashboardStartedImpl value,
          $Res Function(_$DashboardStartedImpl) then) =
      __$$DashboardStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardStartedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardStartedImpl>
    implements _$$DashboardStartedImplCopyWith<$Res> {
  __$$DashboardStartedImplCopyWithImpl(_$DashboardStartedImpl _value,
      $Res Function(_$DashboardStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DashboardStartedImpl
    with DiagnosticableTreeMixin
    implements DashboardStarted {
  const _$DashboardStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DashboardEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) tabChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? tabChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? tabChanged,
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
    required TResult Function(DashboardStarted value) started,
    required TResult Function(DashboardTabChanged value) tabChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStarted value)? started,
    TResult? Function(DashboardTabChanged value)? tabChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStarted value)? started,
    TResult Function(DashboardTabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class DashboardStarted implements DashboardEvent {
  const factory DashboardStarted() = _$DashboardStartedImpl;
}

/// @nodoc
abstract class _$$DashboardTabChangedImplCopyWith<$Res> {
  factory _$$DashboardTabChangedImplCopyWith(_$DashboardTabChangedImpl value,
          $Res Function(_$DashboardTabChangedImpl) then) =
      __$$DashboardTabChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DashboardTabChangedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardTabChangedImpl>
    implements _$$DashboardTabChangedImplCopyWith<$Res> {
  __$$DashboardTabChangedImplCopyWithImpl(_$DashboardTabChangedImpl _value,
      $Res Function(_$DashboardTabChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DashboardTabChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DashboardTabChangedImpl
    with DiagnosticableTreeMixin
    implements DashboardTabChanged {
  const _$DashboardTabChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardEvent.tabChanged(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardEvent.tabChanged'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardTabChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardTabChangedImplCopyWith<_$DashboardTabChangedImpl> get copyWith =>
      __$$DashboardTabChangedImplCopyWithImpl<_$DashboardTabChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) tabChanged,
  }) {
    return tabChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? tabChanged,
  }) {
    return tabChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardStarted value) started,
    required TResult Function(DashboardTabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardStarted value)? started,
    TResult? Function(DashboardTabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardStarted value)? started,
    TResult Function(DashboardTabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class DashboardTabChanged implements DashboardEvent {
  const factory DashboardTabChanged(final int index) =
      _$DashboardTabChangedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DashboardTabChangedImplCopyWith<_$DashboardTabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
