import '../../../utils/exports.dart';

part 'settings_event.freezed.dart';

/// Events for settings module.
@freezed
class SettingsEvent with _$SettingsEvent {
  /// Loads settings.
  const factory SettingsEvent.started() = SettingsStarted;

  /// Changes language.
  const factory SettingsEvent.languageChanged(String languageCode) = SettingsLanguageChanged;

  /// Toggles sound preference.
  const factory SettingsEvent.soundToggled({required bool isEnabled}) =
      SettingsSoundToggled;
}
