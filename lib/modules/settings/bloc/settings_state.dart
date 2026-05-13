import '../../../utils/exports.dart';

part 'settings_state.freezed.dart';

/// Immutable settings state.
@freezed
class SettingsState with _$SettingsState {
  /// Creates settings state.
  const factory SettingsState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(SettingsModel()) SettingsModel settings,
  }) = _SettingsState;
}
