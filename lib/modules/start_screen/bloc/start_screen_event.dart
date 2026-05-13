import '../../../utils/exports.dart';

part 'start_screen_event.freezed.dart';

/// User actions on the start screen.
@freezed
class StartScreenEvent with _$StartScreenEvent {
  /// Triggered when email field value changes.
  const factory StartScreenEvent.emailChanged(String email) = StartScreenEmailChanged;

  /// Triggered when password field value changes.
  const factory StartScreenEvent.passwordChanged(String password) = StartScreenPasswordChanged;

  /// Triggered when user continues from the start screen.
  const factory StartScreenEvent.submitted() = StartScreenSubmitted;
}
