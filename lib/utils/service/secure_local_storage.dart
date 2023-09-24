import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorage {
  static FlutterSecureStorage? storage;
  static void init() {
    const FlutterSecureStorage(
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
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
    debugPrint("Hiss ${storage == null}");
    try {
      String? value = await storage!.read(key: key);
      return value == "true";
    } catch (e) {
      debugPrint("e$e");
      return false;
    }
  }

  static Future<String> getStringValue(String key) async {
    // String? value = await storage!.read(key: key);
    // return value.toString();
    try {
      String? value = await storage!.read(key: key);
      return value!;
    } catch (e) {
      debugPrint("e$e");
      return "";
    }
  }
}
