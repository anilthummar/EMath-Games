import '../../utils/exports.dart';

/// Wrapper for Firebase Remote Config interactions.
class RemoteConfigService {
  /// Loads defaults, settings, and activates latest values.
  Future<void> init() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setDefaults(<String, dynamic>{
      FirebaseConstants.remoteConfigForceUpdate: FirebaseConstants.defaultJson,
      FirebaseConstants.remoteConfigFeatureFlags: FirebaseConstants.defaultJson,
    });
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: Dimens.duration10),
        minimumFetchInterval: const Duration(minutes: 5),
      ),
    );
    await remoteConfig.fetchAndActivate();
  }

  /// Returns raw force-update config payload.
  String getForceUpdateConfig() {
    return FirebaseRemoteConfig.instance
        .getString(FirebaseConstants.remoteConfigForceUpdate);
  }

  /// Returns decoded feature flags map.
  Map<String, dynamic> getFeatureFlags() {
    final String value =
        FirebaseRemoteConfig.instance.getString(FirebaseConstants.remoteConfigFeatureFlags);
    if (value.isEmpty) {
      return <String, dynamic>{};
    }
    return jsonDecode(value) as Map<String, dynamic>;
  }

  /// Returns feature flag state with fallback.
  bool isFeatureEnabled(String key, {bool fallback = false}) {
    final Map<String, dynamic> flags = getFeatureFlags();
    final dynamic value = flags[key];
    if (value is bool) {
      return value;
    }
    return fallback;
  }
}
