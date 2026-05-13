import '../../../utils/exports.dart';

part 'dashboard_tab_item.freezed.dart';

/// Dashboard tab metadata.
@freezed
class DashboardTabItem with _$DashboardTabItem {
  /// Creates dashboard tab item.
  const factory DashboardTabItem({
    required int index,
    required DashboardTabType type,
  }) = _DashboardTabItem;
}

/// Supported dashboard tabs.
enum DashboardTabType {
  /// First tab.
  tabOne,

  /// Second tab.
  tabTwo,

  /// Third tab.
  tabThree,
}
