import '../../../utils/exports.dart';

/// Bloc for settings and localization preferences.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// Creates [SettingsBloc].
  SettingsBloc() : super(const SettingsState()) {
    on<SettingsStarted>(_onStarted);
    on<SettingsLanguageChanged>(_onLanguageChanged);
    on<SettingsSoundToggled>(_onSoundToggled);
    add(const SettingsEvent.started());
  }

  Future<void> _onStarted(
    SettingsStarted event,
    Emitter<SettingsState> emit,
  ) async {
    final String languageCode = getLocale().languageCode;
    final bool isSoundEnabled =
        SharedPref.instance.getBool(AppConstant.isSoundEnabledKey, true);
    emit(state.copyWith(
      status: BaseStateStatus.success,
      settings: SettingsModel(
        languageCode: languageCode,
        isSoundEnabled: isSoundEnabled,
      ),
    ));
  }

  Future<void> _onLanguageChanged(
    SettingsLanguageChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await getIt<LocaleBloc>().changeLanguage(event.languageCode);
    emit(state.copyWith(
      settings: state.settings.copyWith(languageCode: event.languageCode),
      status: BaseStateStatus.success,
    ));
    await getIt<FirebaseService>()
        .analytics
        .trackButtonClick(AppConstant.analyticsSettingsLanguage);
  }

  Future<void> _onSoundToggled(
    SettingsSoundToggled event,
    Emitter<SettingsState> emit,
  ) async {
    await SharedPref.instance.setValue(AppConstant.isSoundEnabledKey, event.isEnabled);
    emit(state.copyWith(
      settings: state.settings.copyWith(isSoundEnabled: event.isEnabled),
      status: BaseStateStatus.success,
    ));
    await getIt<FirebaseService>()
        .analytics
        .trackButtonClick(AppConstant.analyticsSettingsSound);
  }
}
