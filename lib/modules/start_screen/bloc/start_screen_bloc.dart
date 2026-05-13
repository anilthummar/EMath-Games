import '../../../utils/exports.dart';

/// BLoC for the start screen (sign-in / onboarding entry).
class StartScreenBloc extends Bloc<StartScreenEvent, StartScreenState> {
  /// Creates a [StartScreenBloc] instance.
  StartScreenBloc() : super(StartScreenState(formKey: GlobalKey<FormState>())) {
    on<StartScreenEmailChanged>(_onEmailChanged);
    on<StartScreenPasswordChanged>(_onPasswordChanged);
    on<StartScreenSubmitted>(_onSubmitted);
  }

  void _onEmailChanged(StartScreenEmailChanged event, Emitter<StartScreenState> emit) {
    emit(state.copyWith(
      startScreenLocal: state.startScreenLocal.copyWith(email: event.email),
      status: BaseStateStatus.initial,
    ));
  }

  void _onPasswordChanged(StartScreenPasswordChanged event, Emitter<StartScreenState> emit) {
    emit(state.copyWith(
      startScreenLocal: state.startScreenLocal.copyWith(
        password: event.password,
      ),
      status: BaseStateStatus.initial,
    ));
  }

  /// Validates form and signs in anonymously when required.
  Future<void> _onSubmitted(StartScreenSubmitted event, Emitter<StartScreenState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading, errorMessage: null));
    try {
      final FirebaseAuthService authService = getIt<FirebaseService>().auth;
      final User user = await authService.signInAnonymouslyIfRequired();

      await SharedPref.instance.setValue(SharedPref.isLoggedInKey, true);
      await getIt<FirebaseService>().crashlytics.setUser(user.uid);
      await getIt<FirebaseService>()
          .analytics
          .trackButtonClick(AppConstant.analyticsLoginSubmit);
      await getIt<FirebaseService>()
          .analytics
          .trackScreenView(AppConstant.analyticsDashboardScreen);

      await SentryService.instance.configScope(
        sentryUserId: user.uid,
        sentryUserEmail: AppConstant.sentryUserEmail,
      );
      await SentryService.instance.captureEvent(
        AppConstant.sentryAuthLoginSuccess,
        tagKey: AppConstant.sentryAuthTagKey,
        tagValue: AppConstant.sentryAuthTagAnonymous,
      );

      emit(state.copyWith(
        status: BaseStateStatus.success,
        routeName: AppPaths.dashboard,
      ));
    } on Exception catch (error, stackTrace) {
      await getIt<FirebaseService>().crashlytics.recordError(error, stackTrace);
      emit(state.copyWith(
        status: BaseStateStatus.failure,
        errorMessage: error.toString(),
      ));
    }
  }
}
