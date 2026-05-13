import '../../../utils/exports.dart';

part 'dashboard_state.freezed.dart';

/// Immutable dashboard state.
@freezed
class DashboardState with _$DashboardState {
  /// Creates dashboard state.
  const factory DashboardState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(0) int selectedIndex,
    @Default(<DashboardTabItem>[
      DashboardTabItem(index: 0, type: DashboardTabType.tabOne),
      DashboardTabItem(index: 1, type: DashboardTabType.tabTwo),
      DashboardTabItem(index: 2, type: DashboardTabType.tabThree),
    ])
    List<DashboardTabItem> tabs,
  }) = _DashboardState;
}
