import '../../../utils/exports.dart';

part 'leaderboard_entry_model.freezed.dart';

/// Leaderboard row model.
@freezed
class LeaderboardEntryModel with _$LeaderboardEntryModel {
  /// Creates leaderboard row.
  const factory LeaderboardEntryModel({
    required int rank,
    String? name,
    required int score,
    required int level,
  }) = _LeaderboardEntryModel;
}
