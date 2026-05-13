import '../../../utils/exports.dart';

/// Bloc for achievements data.
class AchievementsBloc extends Bloc<AchievementsEvent, AchievementsState> {
  /// Creates [AchievementsBloc].
  AchievementsBloc() : super(const AchievementsState()) {
    on<AchievementsStarted>(_onStarted);
    add(const AchievementsEvent.started());
  }

  Future<void> _onStarted(
    AchievementsStarted event,
    Emitter<AchievementsState> emit,
  ) async {
    final int quizzesPlayed = SharedPref.instance.getInt(AppConstant.quizPlayedCountKey, 0);
    final int bestScore = SharedPref.instance.getInt(AppConstant.quizBestScoreKey, 0);
    final List<AchievementItemModel> items = <AchievementItemModel>[
      AchievementItemModel(
        type: AchievementType.firstQuiz,
        unlocked: quizzesPlayed >= AppConstant.firstQuizUnlockCount,
      ),
      AchievementItemModel(
        type: AchievementType.quizExplorer,
        unlocked: quizzesPlayed >= AppConstant.quizExplorerUnlockCount,
      ),
      AchievementItemModel(
        type: AchievementType.scoreChampion,
        unlocked: bestScore >= AppConstant.scoreChampionUnlockThreshold,
      ),
    ];
    emit(state.copyWith(
      status: BaseStateStatus.success,
      quizzesPlayed: quizzesPlayed,
      bestScore: bestScore,
      achievements: items,
    ));
    await getIt<FirebaseService>()
        .analytics
        .trackScreenView(AppConstant.analyticsAchievementsScreen);
  }
}
