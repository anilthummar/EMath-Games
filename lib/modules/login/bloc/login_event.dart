import '../../../utils/exports.dart';

part 'login_event.freezed.dart';

/// Represents user actions within login module.
@freezed
class LoginEvent with _$LoginEvent {
  /// Triggered when email field value changes.
  const factory LoginEvent.emailChanged(String email) = LoginEmailChanged;

  /// Triggered when password field value changes.
  const factory LoginEvent.passwordChanged(String password) = LoginPasswordChanged;

  /// Triggered when user taps login button.
  const factory LoginEvent.submitted() = LoginSubmitted;
}

