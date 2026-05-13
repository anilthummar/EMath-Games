import '../../../utils/exports.dart';

/// Settings and localization page.
@RoutePage()
class SettingsPage extends StatelessWidget {
  /// Creates [SettingsPage].
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (_) => SettingsBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.appStrings.settingsTitleKey),
        ),
        body: Padding(
          padding: const EdgeInsets.all(Dimens.padding16),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (BuildContext context, SettingsState state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    context.appStrings.changeLanguageKey,
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: Dimens.size12),
                  Wrap(
                    spacing: Dimens.space10,
                    children: <Widget>[
                      _languageChip(
                        context,
                        label: context.appStrings.englishKey,
                        code: AppConstant.en,
                        selected: state.settings.languageCode == AppConstant.en,
                      ),
                      _languageChip(
                        context,
                        label: context.appStrings.hindiKey,
                        code: AppConstant.hi,
                        selected: state.settings.languageCode == AppConstant.hi,
                      ),
                      _languageChip(
                        context,
                        label: context.appStrings.spanishKey,
                        code: AppConstant.es,
                        selected: state.settings.languageCode == AppConstant.es,
                      ),
                    ],
                  ),
                  const SizedBox(height: Dimens.space24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        context.appStrings.soundKey,
                        style: context.textTheme.titleMedium,
                      ),
                      Switch(
                        value: state.settings.isSoundEnabled,
                        onChanged: (bool value) => context
                            .read<SettingsBloc>()
                            .add(SettingsEvent.soundToggled(isEnabled: value)),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _languageChip(
    BuildContext context, {
    required String label,
    required String code,
    required bool selected,
  }) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) =>
          context.read<SettingsBloc>().add(SettingsEvent.languageChanged(code)),
      selectedColor: AppColors.instance.orangeBGColor,
      labelStyle: context.textTheme.bodyMedium?.copyWith(
        color: selected
            ? AppColors.instance.whiteTextColor
            : AppColors.instance.blackTextColor,
      ),
      side: BorderSide(
        color: AppColors.instance.lightGrayBGColor,
      ),
    );
  }
}
