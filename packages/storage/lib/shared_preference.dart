import 'dart:io';

import 'package:config/config.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter/foundation.dart' hide Key;
import 'package:get_storage/get_storage.dart';

/// Encrypted shared preferences storage. Call [init] before use.
class SharedPref {
  SharedPref._();

  static final SharedPref instance = SharedPref._();

  static String isLoggedInKey = 'keyIsLoggedIn';
  static String userIdKey = 'keyUserID';
  static String currentLocaleKey = 'KeyCurrentLocale';

  GetStorage? _prefsInstance;
  String encryptKey = "";
  String encryptIv = "";

  void init({String packageName = ''}) {
    _prefsInstance ??= GetStorage();
    _getEncryptionKey(packageName: packageName);
    if (kIsWeb) {
      encryptIv = AppConstant.web.padLeft(AppConstant.encryptionLength, "0");
    } else {
      if (Platform.isAndroid) {
        encryptIv =
            AppConstant.android.padLeft(AppConstant.encryptionLength, "0");
      } else if (Platform.isIOS) {
        encryptIv = AppConstant.ios.padLeft(AppConstant.encryptionLength, "0");
      }
    }
  }

  void _isPreferenceReady() {
    assert(_prefsInstance != null, "SharedPreferences not ready yet!");
  }

  bool getBool(String key, [dynamic defValue]) {
    final value = _decodedValue(key);
    return (value != null && value.isNotEmpty)
        ? bool.parse(value)
        : defValue ?? false;
  }

  int getInt(String key, [int? defValue]) {
    final value = _decodedValue(key);
    return (value != null && value.isNotEmpty)
        ? int.parse(value)
        : defValue ?? 0;
  }

  double getDouble(String key, [double? defValue]) {
    final value = _decodedValue(key);
    return (value != null && value.isNotEmpty)
        ? double.parse(value)
        : defValue ?? 0.0;
  }

  String getString(String key, [String? defValue]) {
    final value = _decodedValue(key);
    return (value != null && value.isNotEmpty) ? value : defValue ?? "";
  }

  Future<void> setValue(String key, dynamic value) async {
    final encrypted = _encrypt(value.toString());
    await _prefsInstance?.write(key, encrypted);
  }

  Future<void> remove(String key) async {
    await _prefsInstance?.remove(key);
  }

  Set<String>? getKeys() {
    _isPreferenceReady();
    return _prefsInstance?.getKeys();
  }

  Future<void> clearData() async {
    await _prefsInstance?.erase();
  }

  void dispose() {
    _prefsInstance = null;
  }

  String? _decodedValue(String key) {
    _isPreferenceReady();
    final value = _prefsInstance?.read(key);
    if (value != null) return _decrypt(value);
    return null;
  }

  String? _encrypt(String text) {
    final key = Key.fromUtf8(encryptKey);
    final iv = IV.fromUtf8(encryptIv);
    return Encrypter(AES(key, mode: AESMode.cbc)).encrypt(text, iv: iv).base64;
  }

  String? _decrypt(dynamic value) {
    if (value == null || value.toString().isEmpty) return null;
    final key = Key.fromUtf8(encryptKey);
    final iv = IV.fromUtf8(encryptIv);
    return Encrypter(AES(key, mode: AESMode.cbc))
        .decrypt64(value.toString(), iv: iv);
  }

  void _getEncryptionKey({String packageName = ''}) {
    encryptKey = packageName.replaceAll(".", "0");
    if (encryptKey.length > AppConstant.encryptionLength) {
      encryptKey = encryptKey.substring(0, AppConstant.encryptionLength);
    } else {
      encryptKey = encryptKey.padLeft(AppConstant.encryptionLength, "0");
    }
  }
}
