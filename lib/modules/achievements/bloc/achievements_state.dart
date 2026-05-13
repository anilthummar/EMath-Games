import '../../../utils/exports.dart';

part 'achievements_state.freezed.dart';

/// Immutable achievements state.
@freezed
class AchievementsState with _$AchievementsState {
  /// Creates achievements state.
  const factory AchievementsState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(<AchievementItemModel>[]) List<AchievementItemModel> achievements,
    @Default(0) int quizzesPlayed,
    @Default(0) int bestScore,
  }) = _AchievementsState;
}
