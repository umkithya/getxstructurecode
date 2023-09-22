import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorage {
  static FlutterSecureStorage? storage;
  static void init() {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    storage = FlutterSecureStorage(
      aOptions: getAndroidOptions(),
    );
  }

  static Future<void> storeData(String? key, dynamic value) async {
    await storage!.write(key: key!, value: value.toString());
  }

  static Future<num> getNumValue(String key) async {
    String? value = await storage!.read(key: key);
    return num.parse(value!);
  }

  static Future<bool> getBoolValue(String key) async {
    String? value = await storage!.read(key: key);
    return value == "true";
  }

  static Future<String> getStringValue(String key) async {
    String? value = await storage!.read(key: key);
    return value.toString();
  }
}
