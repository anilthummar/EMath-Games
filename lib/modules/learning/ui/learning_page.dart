import '../../../utils/exports.dart';

/// Learning module page.
@RoutePage()
class LearningPage extends StatelessWidget {
  /// Creates [LearningPage].
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LearningBloc>(
      create: (_) => LearningBloc(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(Dimens.padding16),
          child: BlocBuilder<LearningBloc, LearningState>(
            builder: (BuildContext context, LearningState state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    context.appStrings.learningTitleKey,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: Dimens.size12),
                  Text(
                    '${context.appStrings.currentLevelKey}: ${state.currentLevel}',
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: Dimens.size16),
                  Text(
                    context.appStrings.difficultyKey,
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: Dimens.space8),
                  Wrap(
                    spacing: Dimens.space8,
                    children: <Widget>[
                      _difficultyChip(
                        context,
                        label: context.appStrings.easyKey,
                        difficulty: QuizDifficulty.easy,
                        selected: state.selectedDifficulty == QuizDifficulty.easy,
                      ),
                      _difficultyChip(
                        context,
                        label: context.appStrings.mediumKey,
                        difficulty: QuizDifficulty.medium,
                        selected: state.selectedDifficulty == QuizDifficulty.medium,
                      ),
                      _difficultyChip(
                        context,
                        label: context.appStrings.hardKey,
                        difficulty: QuizDifficulty.hard,
                        selected: state.selectedDifficulty == QuizDifficulty.hard,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimens.size16),
                  Expanded(
                    child: GridView.builder(
                      itemCount: state.topics.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: Dimens.space12,
                        mainAxisSpacing: Dimens.space12,
                        childAspectRatio: 1.8,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final LearningTopicModel item = state.topics[index];
                        final bool isSelected = item.operation == state.selectedOperation;
                        return InkWell(
                          borderRadius: Dimens.radius8.borderRadius,
                          onTap: () => context
                              .read<LearningBloc>()
                              .add(LearningEvent.topicSelected(item.operation)),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: Dimens.radius8.borderRadius,
                              color: isSelected
                                  ? AppColors.instance.orangeBGColor
                                  : AppColors.instance.lightGrayBGColor,
                            ),
                            child: Text(
                              _titleByOperation(context, item.operation),
                              style: context.textTheme.titleMedium?.copyWith(
                                color: isSelected
                                    ? AppColors.instance.whiteTextColor
                                    : AppColors.instance.blackTextColor,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: Dimens.size16),
                  CustomButtonWidget(
                    text: context.appStrings.startQuizKey,
                    onClick: () {
                      unawaited(context.router.push(
                        QuizRoute(
                          operation: context.read<LearningBloc>().state.selectedOperation,
                          difficulty: context.read<LearningBloc>().state.selectedDifficulty,
                        ),
                      ));
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  String _titleByOperation(BuildContext context, QuizOperation operation) {
    switch (operation) {
      case QuizOperation.addition:
        return context.appStrings.additionKey;
      case QuizOperation.subtraction:
        return context.appStrings.subtractionKey;
      case QuizOperation.multiplication:
        return context.appStrings.multiplicationKey;
      case QuizOperation.division:
        return context.appStrings.divisionKey;
    }
  }

  Widget _difficultyChip(
    BuildContext context, {
    required String label,
    required QuizDifficulty difficulty,
    required bool selected,
  }) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) => context
          .read<LearningBloc>()
          .add(LearningEvent.difficultySelected(difficulty)),
    );
  }
}
