import '../../../utils/exports.dart';

/// Bloc for leaderboard data.
class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  /// Creates [LeaderboardBloc].
  LeaderboardBloc() : super(const LeaderboardState()) {
    on<LeaderboardStarted>(_onStarted);
    add(const LeaderboardEvent.started());
  }

  Future<void> _onStarted(
    LeaderboardStarted event,
    Emitter<LeaderboardState> emit,
  ) async {
    final int bestScore = SharedPref.instance.getInt(AppConstant.quizBestScoreKey, 0);
    final int currentLevel = SharedPref.instance.getInt(AppConstant.quizLevelKey, 1);
    final List<LeaderboardEntryModel> rows = <LeaderboardEntryModel>[
      LeaderboardEntryModel(
        rank: 1,
        score: bestScore,
        level: currentLevel,
      ),
    ];
    emit(state.copyWith(status: BaseStateStatus.success, entries: rows));
    await getIt<FirebaseService>()
        .analytics
        .trackScreenView(AppConstant.analyticsLeaderboardScreen);
  }
}
