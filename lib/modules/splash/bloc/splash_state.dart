import '../../../utils/exports.dart';

part 'splash_state.freezed.dart';

/// Immutable splash state.
@freezed
class SplashState with _$SplashState {
  /// Creates splash state.
  const factory SplashState({
    @Default(BaseStateStatus.initial) BaseStateStatus status,
    String? routeName,
  }) = _SplashState;
}
