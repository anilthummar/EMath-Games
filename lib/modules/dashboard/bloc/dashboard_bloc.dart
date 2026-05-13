import '../../../utils/exports.dart';

/// Handles dashboard tab state and analytics.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  /// Creates [DashboardBloc].
  DashboardBloc() : super(const DashboardState()) {
    on<DashboardStarted>(_onStarted);
    on<DashboardTabChanged>(_onTabChanged);
    add(const DashboardEvent.started());
  }

  Future<void> _onStarted(
    DashboardStarted event,
    Emitter<DashboardState> emit,
  ) async {
    await getIt<FirebaseService>()
        .analytics
        .trackScreenView(AppConstant.analyticsDashboardScreen);
    emit(state.copyWith(status: BaseStateStatus.success));
  }

  Future<void> _onTabChanged(
    DashboardTabChanged event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(selectedIndex: event.index, status: BaseStateStatus.success));
    await getIt<FirebaseService>()
        .analytics
        .trackButtonClick('${AppConstant.analyticsDashboardTabPrefix}${event.index}');
  }
}
