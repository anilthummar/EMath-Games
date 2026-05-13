// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  BaseStateStatus get status => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<DashboardTabItem> get tabs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {BaseStateStatus status, int selectedIndex, List<DashboardTabItem> tabs});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedIndex = null,
    Object? tabs = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabs: null == tabs
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<DashboardTabItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStateStatus status, int selectedIndex, List<DashboardTabItem> tabs});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedIndex = null,
    Object? tabs = null,
  }) {
    return _then(_$DashboardStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      tabs: null == tabs
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as List<DashboardTabItem>,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl
    with DiagnosticableTreeMixin
    implements _DashboardState {
  const _$DashboardStateImpl(
      {this.status = BaseStateStatus.initial,
      this.selectedIndex = 0,
      final List<DashboardTabItem> tabs = const <DashboardTabItem>[
        DashboardTabItem(index: 0, type: DashboardTabType.tabOne),
        DashboardTabItem(index: 1, type: DashboardTabType.tabTwo),
        DashboardTabItem(index: 2, type: DashboardTabType.tabThree)
      ]})
      : _tabs = tabs;

  @override
  @JsonKey()
  final BaseStateStatus status;
  @override
  @JsonKey()
  final int selectedIndex;
  final List<DashboardTabItem> _tabs;
  @override
  @JsonKey()
  List<DashboardTabItem> get tabs {
    if (_tabs is EqualUnmodifiableListView) return _tabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardState(status: $status, selectedIndex: $selectedIndex, tabs: $tabs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('tabs', tabs));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(other._tabs, _tabs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedIndex,
      const DeepCollectionEquality().hash(_tabs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {final BaseStateStatus status,
      final int selectedIndex,
      final List<DashboardTabItem> tabs}) = _$DashboardStateImpl;

  @override
  BaseStateStatus get status;
  @override
  int get selectedIndex;
  @override
  List<DashboardTabItem> get tabs;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
