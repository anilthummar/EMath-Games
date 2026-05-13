import '../../../utils/exports.dart';

part 'start_screen_state.freezed.dart';

/// Immutable state for the start screen flow.
@freezed
class StartScreenState with _$StartScreenState {
  /// Creates a [StartScreenState] object.
  const factory StartScreenState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    @Default(StartScreenLocal()) StartScreenLocal startScreenLocal,
    String? routeName,
    required GlobalKey<FormState> formKey,
    String? errorMessage,
  }) = _StartScreenState;
}
