import 'package:encrypt/encrypt.dart';

/// AES CBC encryption/decryption utilities.
class AESEncryption {
  AESEncryption._();

  static final AESEncryption instance = AESEncryption._();

  String encryptCode(String encryptKey, String encryptIV, {String? text}) {
    final key = Key.fromUtf8(encryptKey);
    final iv = IV.fromUtf8(encryptIV);
    return Encrypter(AES(key, mode: AESMode.cbc))
        .encrypt(text ?? '', iv: iv)
        .base64;
  }

  String decryptCode(String encryptKey, String encryptIV, {String? text}) {
    final key = Key.fromUtf8(encryptKey);
    final iv = IV.fromUtf8(encryptIV);
    return Encrypter(AES(key, mode: AESMode.cbc))
        .decrypt64(text ?? '', iv: iv);
  }
}
