import '../../../utils/exports.dart';

/// Leaderboard page.
@RoutePage()
class LeaderboardPage extends StatelessWidget {
  /// Creates [LeaderboardPage].
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LeaderboardBloc>(
      create: (_) => LeaderboardBloc(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(Dimens.padding16),
          child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
            builder: (BuildContext context, LeaderboardState state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    context.appStrings.leaderboardTitleKey,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: Dimens.size16),
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.entries.length,
                      separatorBuilder: (_, __) => const SizedBox(height: Dimens.space12),
                      itemBuilder: (BuildContext context, int index) {
                        final LeaderboardEntryModel entry = state.entries[index];
                        return Container(
                          padding: const EdgeInsets.all(Dimens.padding12),
                          decoration: BoxDecoration(
                            color: AppColors.instance.lightGrayBGColor,
                            borderRadius: Dimens.radius8.borderRadius,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text('#${entry.rank}'),
                              const SizedBox(width: Dimens.space12),
                              Expanded(
                                child: Text(entry.name ?? context.appStrings.playerKey),
                              ),
                              Text('${context.appStrings.currentLevelKey} ${entry.level}'),
                              const SizedBox(width: Dimens.space12),
                              Text('${context.appStrings.bestScoreKey}: ${entry.score}'),
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
}
