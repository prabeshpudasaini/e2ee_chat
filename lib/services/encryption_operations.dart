import 'package:encrypt/encrypt.dart';
import 'package:e2ee_chat/config/secret_data.dart';
import 'package:e2ee_chat/config/text_collection.dart';
import 'package:e2ee_chat/services/local_data_management.dart';

class Secure {
  static Key _key =
      Key.fromBase64(DataManagement.getEnvData(EnvFileKey.encryptKey) ?? '');
  static IV _iv = IV.fromBase64(SecretData.iv);
  static Encrypter _makeEncryption =
      Encrypter(AES(_key, mode: AESMode.ctr, padding: null));

  static String? encode(String? plainText) {
    if (plainText == null) return null;
    final Encrypted encrypted = _makeEncryption.encrypt(plainText, iv: _iv);
    print(_iv.base64);
    print(_key.base64);

    return encrypted.base64;
  }

  static String decode(String? encodedStringForm, {bool initialize = false}) {
    try {
      if (encodedStringForm == null) return '';

      if (initialize) {
        _key = Key.fromBase64(SecretData.encryptKey);
        _iv = IV.fromBase64(SecretData.iv);
        _makeEncryption =
            Encrypter(AES(_key, mode: AESMode.ctr, padding: null));
      }

      final String decrypted =
          _makeEncryption.decrypt64(encodedStringForm, iv: _iv);
      print(_iv.base64);
      print(_key.base64);

      return decrypted;
    } catch (e) {
      if (e.toString().contains('NotInitializedError')) {
        return decode(encodedStringForm, initialize: true);
      }

      return encodedStringForm ?? '';
    }
  }
}
