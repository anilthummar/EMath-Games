import '../../../utils/exports.dart';

/// Achievements page.
@RoutePage()
class AchievementsPage extends StatelessWidget {
  /// Creates [AchievementsPage].
  const AchievementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AchievementsBloc>(
      create: (_) => AchievementsBloc(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(Dimens.padding16),
          child: BlocBuilder<AchievementsBloc, AchievementsState>(
            builder: (BuildContext context, AchievementsState state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    context.appStrings.achievementsTitleKey,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: Dimens.size12),
                  Text('${context.appStrings.quizzesPlayedKey}: ${state.quizzesPlayed}'),
                  const SizedBox(height: Dimens.space8),
                  Text('${context.appStrings.bestScoreKey}: ${state.bestScore}'),
                  const SizedBox(height: Dimens.size16),
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.achievements.length,
                      separatorBuilder: (_, __) => const SizedBox(height: Dimens.space12),
                      itemBuilder: (BuildContext context, int index) {
                        final AchievementItemModel item = state.achievements[index];
                        return Container(
                          padding: const EdgeInsets.all(Dimens.padding12),
                          decoration: BoxDecoration(
                            borderRadius: Dimens.radius8.borderRadius,
                            color: AppColors.instance.lightGrayBGColor,
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                item.unlocked ? Icons.emoji_events : Icons.lock_outline,
                                color: item.unlocked
                                    ? AppColors.instance.orangeBGColor
                                    : AppColors.instance.mediumGrayBGColor,
                              ),
                              const SizedBox(width: Dimens.space12),
                              Expanded(child: Text(_titleForType(context, item.type))),
                              Text(item.unlocked
                                  ? context.appStrings.unlockedKey
                                  : context.appStrings.lockedKey),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  String _titleForType(BuildContext context, AchievementType type) {
    switch (type) {
      case AchievementType.firstQuiz:
        return context.appStrings.firstQuizAchievementKey;
      case AchievementType.quizExplorer:
        return context.appStrings.quizExplorerAchievementKey;
      case AchievementType.scoreChampion:
        return context.appStrings.scoreChampionAchievementKey;
    }
  }
}
