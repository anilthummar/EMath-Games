// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaderboardEntryModel {
  int get rank => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaderboardEntryModelCopyWith<LeaderboardEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntryModelCopyWith<$Res> {
  factory $LeaderboardEntryModelCopyWith(LeaderboardEntryModel value,
          $Res Function(LeaderboardEntryModel) then) =
      _$LeaderboardEntryModelCopyWithImpl<$Res, LeaderboardEntryModel>;
  @useResult
  $Res call({int rank, String? name, int score, int level});
}

/// @nodoc
class _$LeaderboardEntryModelCopyWithImpl<$Res,
        $Val extends LeaderboardEntryModel>
    implements $LeaderboardEntryModelCopyWith<$Res> {
  _$LeaderboardEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? name = freezed,
    Object? score = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardEntryModelImplCopyWith<$Res>
    implements $LeaderboardEntryModelCopyWith<$Res> {
  factory _$$LeaderboardEntryModelImplCopyWith(
          _$LeaderboardEntryModelImpl value,
          $Res Function(_$LeaderboardEntryModelImpl) then) =
      __$$LeaderboardEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rank, String? name, int score, int level});
}

/// @nodoc
class __$$LeaderboardEntryModelImplCopyWithImpl<$Res>
    extends _$LeaderboardEntryModelCopyWithImpl<$Res,
        _$LeaderboardEntryModelImpl>
    implements _$$LeaderboardEntryModelImplCopyWith<$Res> {
  __$$LeaderboardEntryModelImplCopyWithImpl(_$LeaderboardEntryModelImpl _value,
      $Res Function(_$LeaderboardEntryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? name = freezed,
    Object? score = null,
    Object? level = null,
  }) {
    return _then(_$LeaderboardEntryModelImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LeaderboardEntryModelImpl
    with DiagnosticableTreeMixin
    implements _LeaderboardEntryModel {
  const _$LeaderboardEntryModelImpl(
      {required this.rank,
      this.name,
      required this.score,
      required this.level});

  @override
  final int rank;
  @override
  final String? name;
  @override
  final int score;
  @override
  final int level;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaderboardEntryModel(rank: $rank, name: $name, score: $score, level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LeaderboardEntryModel'))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('score', score))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntryModelImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rank, name, score, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntryModelImplCopyWith<_$LeaderboardEntryModelImpl>
      get copyWith => __$$LeaderboardEntryModelImplCopyWithImpl<
          _$LeaderboardEntryModelImpl>(this, _$identity);
}

abstract class _LeaderboardEntryModel implements LeaderboardEntryModel {
  const factory _LeaderboardEntryModel(
      {required final int rank,
      final String? name,
      required final int score,
      required final int level}) = _$LeaderboardEntryModelImpl;

  @override
  int get rank;
  @override
  String? get name;
  @override
  int get score;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardEntryModelImplCopyWith<_$LeaderboardEntryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
