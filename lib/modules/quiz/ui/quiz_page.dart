import '../../../utils/exports.dart';

/// Quiz page.
@RoutePage()
class QuizPage extends StatelessWidget {
  /// Creates [QuizPage].
  const QuizPage({
    required this.operation,
    required this.difficulty,
    super.key,
  });

  /// Selected operation for quiz.
  final QuizOperation operation;
  /// Selected difficulty for quiz.
  final QuizDifficulty difficulty;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuizBloc>(
      create: (_) => QuizBloc(
        operation: operation,
        difficulty: difficulty,
        engine: getIt<QuizEngineService>(),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(context.appStrings.quizTitleKey)),
        body: Padding(
          padding: const EdgeInsets.all(Dimens.padding16),
          child: BlocBuilder<QuizBloc, QuizState>(
            builder: (BuildContext context, QuizState state) {
              if (state.questions.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.isCompleted) {
                return _resultView(context, state);
              }
              final QuizQuestionModel question = state.questions[state.questionIndex];
              return _questionView(context, state, question);
            },
          ),
        ),
      ),
    );
  }

  Widget _resultView(BuildContext context, QuizState state) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '${context.appStrings.yourScoreKey}: ${state.score}',
            style: context.textTheme.titleLarge,
          ),
          const SizedBox(height: Dimens.size12),
          Text(
            '${context.appStrings.currentLevelKey}: ${state.progressedLevel}',
            style: context.textTheme.bodyLarge,
          ),
          const SizedBox(height: Dimens.size16),
          CustomButtonWidget(
            text: context.appStrings.restartQuizKey,
            onClick: () => context.read<QuizBloc>().add(const QuizEvent.restarted()),
          ),
        ],
      ),
    );
  }

  Widget _questionView(
    BuildContext context,
    QuizState state,
    QuizQuestionModel question,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '${context.appStrings.questionKey} ${state.questionIndex + 1}/${state.questions.length}',
          style: context.textTheme.titleMedium,
        ),
        const SizedBox(height: Dimens.space8),
        Text(
          '${context.appStrings.timerKey}: ${state.remainingSeconds}s',
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(height: Dimens.space8),
        Text(
          '${context.appStrings.progressKey}: ${state.answeredQuestions}/${state.questions.length}',
          style: context.textTheme.bodyMedium,
        ),
        const SizedBox(height: Dimens.size12),
        Text(
          question.expression,
          style: context.textTheme.headlineSmall,
        ),
        const SizedBox(height: Dimens.size16),
        ...question.options.map((int option) {
          final bool isSelected = option == state.selectedAnswer;
          return Padding(
            padding: const EdgeInsets.only(bottom: Dimens.space8),
            child: InkWell(
              borderRadius: Dimens.radius8.borderRadius,
              onTap: () =>
                  context.read<QuizBloc>().add(QuizEvent.answerSelected(option)),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(Dimens.padding12),
                decoration: BoxDecoration(
                  borderRadius: Dimens.radius8.borderRadius,
                  border: Border.all(
                    color: isSelected
                        ? AppColors.instance.orangeBGColor
                        : AppColors.instance.lightGrayBGColor,
                  ),
                ),
                child: Text(
                  option.toString(),
                  style: context.textTheme.bodyLarge,
                ),
              ),
            ),
          );
        }),
        const Spacer(),
        CustomButtonWidget(
          text: state.isAnswerSubmitted
              ? context.appStrings.nextQuestionKey
              : context.appStrings.submitAnswerKey,
          onClick: () {
            if (state.isAnswerSubmitted) {
              context.read<QuizBloc>().add(const QuizEvent.nextQuestion());
              return;
            }
            context.read<QuizBloc>().add(const QuizEvent.answerSubmitted());
          },
        ),
      ],
    );
  }
}
