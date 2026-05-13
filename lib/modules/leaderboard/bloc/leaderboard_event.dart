import '../../../utils/exports.dart';

part 'leaderboard_event.freezed.dart';

/// Leaderboard events.
@freezed
class LeaderboardEvent with _$LeaderboardEvent {
  /// Loads leaderboard data.
  const factory LeaderboardEvent.started() = LeaderboardStarted;
}
