import '../../../utils/exports.dart';

part 'settings_model.freezed.dart';

/// Settings data model.
@freezed
class SettingsModel with _$SettingsModel {
  /// Creates settings model.
  const factory SettingsModel({
    @Default(AppConstant.en) String languageCode,
    @Default(true) bool isSoundEnabled,
  }) = _SettingsModel;
}
