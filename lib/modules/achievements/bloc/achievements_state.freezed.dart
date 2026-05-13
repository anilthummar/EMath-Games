// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievements_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AchievementsState {
  BaseStateStatus get status => throw _privateConstructorUsedError;
  List<AchievementItemModel> get achievements =>
      throw _privateConstructorUsedError;
  int get quizzesPlayed => throw _privateConstructorUsedError;
  int get bestScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AchievementsStateCopyWith<AchievementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementsStateCopyWith<$Res> {
  factory $AchievementsStateCopyWith(
          AchievementsState value, $Res Function(AchievementsState) then) =
      _$AchievementsStateCopyWithImpl<$Res, AchievementsState>;
  @useResult
  $Res call(
      {BaseStateStatus status,
      List<AchievementItemModel> achievements,
      int quizzesPlayed,
      int bestScore});
}

/// @nodoc
class _$AchievementsStateCopyWithImpl<$Res, $Val extends AchievementsState>
    implements $AchievementsStateCopyWith<$Res> {
  _$AchievementsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? achievements = null,
    Object? quizzesPlayed = null,
    Object? bestScore = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementItemModel>,
      quizzesPlayed: null == quizzesPlayed
          ? _value.quizzesPlayed
          : quizzesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      bestScore: null == bestScore
          ? _value.bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementsStateImplCopyWith<$Res>
    implements $AchievementsStateCopyWith<$Res> {
  factory _$$AchievementsStateImplCopyWith(_$AchievementsStateImpl value,
          $Res Function(_$AchievementsStateImpl) then) =
      __$$AchievementsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStateStatus status,
      List<AchievementItemModel> achievements,
      int quizzesPlayed,
      int bestScore});
}

/// @nodoc
class __$$AchievementsStateImplCopyWithImpl<$Res>
    extends _$AchievementsStateCopyWithImpl<$Res, _$AchievementsStateImpl>
    implements _$$AchievementsStateImplCopyWith<$Res> {
  __$$AchievementsStateImplCopyWithImpl(_$AchievementsStateImpl _value,
      $Res Function(_$AchievementsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? achievements = null,
    Object? quizzesPlayed = null,
    Object? bestScore = null,
  }) {
    return _then(_$AchievementsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStateStatus,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<AchievementItemModel>,
      quizzesPlayed: null == quizzesPlayed
          ? _value.quizzesPlayed
          : quizzesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      bestScore: null == bestScore
          ? _value.bestScore
          : bestScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AchievementsStateImpl
    with DiagnosticableTreeMixin
    implements _AchievementsState {
  const _$AchievementsStateImpl(
      {this.status = BaseStateStatus.initial,
      final List<AchievementItemModel> achievements =
          const <AchievementItemModel>[],
      this.quizzesPlayed = 0,
      this.bestScore = 0})
      : _achievements = achievements;

  @override
  @JsonKey()
  final BaseStateStatus status;
  final List<AchievementItemModel> _achievements;
  @override
  @JsonKey()
  List<AchievementItemModel> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  @JsonKey()
  final int quizzesPlayed;
  @override
  @JsonKey()
  final int bestScore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AchievementsState(status: $status, achievements: $achievements, quizzesPlayed: $quizzesPlayed, bestScore: $bestScore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AchievementsState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('achievements', achievements))
      ..add(DiagnosticsProperty('quizzesPlayed', quizzesPlayed))
      ..add(DiagnosticsProperty('bestScore', bestScore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.quizzesPlayed, quizzesPlayed) ||
                other.quizzesPlayed == quizzesPlayed) &&
            (identical(other.bestScore, bestScore) ||
                other.bestScore == bestScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_achievements),
      quizzesPlayed,
      bestScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementsStateImplCopyWith<_$AchievementsStateImpl> get copyWith =>
      __$$AchievementsStateImplCopyWithImpl<_$AchievementsStateImpl>(
          this, _$identity);
}

abstract class _AchievementsState implements AchievementsState {
  const factory _AchievementsState(
      {final BaseStateStatus status,
      final List<AchievementItemModel> achievements,
      final int quizzesPlayed,
      final int bestScore}) = _$AchievementsStateImpl;

  @override
  BaseStateStatus get status;
  @override
  List<AchievementItemModel> get achievements;
  @override
  int get quizzesPlayed;
  @override
  int get bestScore;
  @override
  @JsonKey(ignore: true)
  _$$AchievementsStateImplCopyWith<_$AchievementsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
