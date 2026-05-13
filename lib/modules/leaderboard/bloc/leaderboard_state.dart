import '../../../utils/exports.dart';

part 'leaderboard_state.freezed.dart';

/// Immutable leaderboard state.
@freezed
class LeaderboardState with _$LeaderboardState {
  /// Creates leaderboard state.
  const factory LeaderboardState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(<LeaderboardEntryModel>[]) List<LeaderboardEntryModel> entries,
  }) = _LeaderboardState;
}
