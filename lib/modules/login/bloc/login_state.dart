import '../../../utils/exports.dart';

part 'login_state.freezed.dart';

/// Represents the immutable login state.
@freezed
class LoginState with _$LoginState {
  /// Creates a [LoginState] object.
  const factory LoginState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(LoginLocal()) LoginLocal loginLocal,
    String? routeName,
    required GlobalKey<FormState> formKey,
    String? errorMessage,
  }) = _LoginState;
}

