import '../../../utils/exports.dart';

part 'achievements_event.freezed.dart';

/// Achievement events.
@freezed
class AchievementsEvent with _$AchievementsEvent {
  /// Loads achievement list.
  const factory AchievementsEvent.started() = AchievementsStarted;
}
