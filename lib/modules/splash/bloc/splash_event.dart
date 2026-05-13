import '../../../utils/exports.dart';

part 'splash_event.freezed.dart';

/// Events emitted by splash feature.
@freezed
class SplashEvent with _$SplashEvent {
  /// Triggers splash initialization and delayed redirection.
  const factory SplashEvent.started() = SplashStarted;
}
