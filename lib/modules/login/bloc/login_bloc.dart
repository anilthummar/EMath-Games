import '../../../utils/exports.dart';

/// A BLoC that manages the state of the login process.
///
/// This bloc handles user authentication and login form interactions.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  /// Creates a [LoginBloc] instance.
  LoginBloc() : super(LoginState(formKey: GlobalKey<FormState>())) {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  /// Handles changes to the email field.
  void _onEmailChanged(LoginEmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      loginLocal: state.loginLocal.copyWith(email: event.email),
      status: BaseStateStatus.initial,
    ));
  }

  /// Handles changes to the password field.
  void _onPasswordChanged(LoginPasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      loginLocal: state.loginLocal.copyWith(
        password: event.password,
      ),
      status: BaseStateStatus.initial,
    ));
  }

  /// Validates login form and authenticates with anonymous fallback.
  Future<void> _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading, errorMessage: null));
    try {
      final bool isValidForm = state.formKey.currentState?.validate() ?? false;
      // if (!isValidForm) {
      //   emit(state.copyWith(
      //     status: BaseStateStatus.failure,
      //     errorMessage: getIt<AppRouter>().navigatorKey.currentContext?.appStrings
      //         .somethingWentWrongKey,
      //   ));
      //   return;
      // }

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

