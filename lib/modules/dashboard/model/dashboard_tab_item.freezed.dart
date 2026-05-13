// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_tab_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardTabItem {
  int get index => throw _privateConstructorUsedError;
  DashboardTabType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardTabItemCopyWith<DashboardTabItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardTabItemCopyWith<$Res> {
  factory $DashboardTabItemCopyWith(
          DashboardTabItem value, $Res Function(DashboardTabItem) then) =
      _$DashboardTabItemCopyWithImpl<$Res, DashboardTabItem>;
  @useResult
  $Res call({int index, DashboardTabType type});
}

/// @nodoc
class _$DashboardTabItemCopyWithImpl<$Res, $Val extends DashboardTabItem>
    implements $DashboardTabItemCopyWith<$Res> {
  _$DashboardTabItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DashboardTabType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardTabItemImplCopyWith<$Res>
    implements $DashboardTabItemCopyWith<$Res> {
  factory _$$DashboardTabItemImplCopyWith(_$DashboardTabItemImpl value,
          $Res Function(_$DashboardTabItemImpl) then) =
      __$$DashboardTabItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, DashboardTabType type});
}

/// @nodoc
class __$$DashboardTabItemImplCopyWithImpl<$Res>
    extends _$DashboardTabItemCopyWithImpl<$Res, _$DashboardTabItemImpl>
    implements _$$DashboardTabItemImplCopyWith<$Res> {
  __$$DashboardTabItemImplCopyWithImpl(_$DashboardTabItemImpl _value,
      $Res Function(_$DashboardTabItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
  }) {
    return _then(_$DashboardTabItemImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DashboardTabType,
    ));
  }
}

/// @nodoc

class _$DashboardTabItemImpl
    with DiagnosticableTreeMixin
    implements _DashboardTabItem {
  const _$DashboardTabItemImpl({required this.index, required this.type});

  @override
  final int index;
  @override
  final DashboardTabType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardTabItem(index: $index, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardTabItem'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardTabItemImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardTabItemImplCopyWith<_$DashboardTabItemImpl> get copyWith =>
      __$$DashboardTabItemImplCopyWithImpl<_$DashboardTabItemImpl>(
          this, _$identity);
}

abstract class _DashboardTabItem implements DashboardTabItem {
  const factory _DashboardTabItem(
      {required final int index,
      required final DashboardTabType type}) = _$DashboardTabItemImpl;

  @override
  int get index;
  @override
  DashboardTabType get type;
  @override
  @JsonKey(ignore: true)
  _$$DashboardTabItemImplCopyWith<_$DashboardTabItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
