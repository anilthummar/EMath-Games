import '../../../../utils/exports.dart';

part 'start_screen_local.freezed.dart';
part 'start_screen_local.g.dart';

/// Local form values for the start screen (e.g. email and password).
@freezed
class StartScreenLocal with _$StartScreenLocal {
  /// Creates a new instance of [StartScreenLocal].
  const factory StartScreenLocal({String? email, String? password}) = _StartScreenLocal;

  /// Creates a new instance of [StartScreenLocal] from a JSON object.
  factory StartScreenLocal.fromJson(Map<String, dynamic> json) =>
      _$StartScreenLocalFromJson(json);
}
