import '../../../utils/exports.dart';

part 'dashboard_event.freezed.dart';

/// Events for dashboard interactions.
@freezed
class DashboardEvent with _$DashboardEvent {
  /// Triggered when dashboard is opened.
  const factory DashboardEvent.started() = DashboardStarted;

  /// Triggered when user taps a bottom tab.
  const factory DashboardEvent.tabChanged(int index) = DashboardTabChanged;
}
