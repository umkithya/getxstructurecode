import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorage {
  SecureLocalStorage._();
  static final instance = SecureLocalStorage._();
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> storeData(String? key, dynamic value) async {
    await storage.write(key: key!, value: value);
  }

  Future<num> getNumValue(String key) async {
    String? value = await storage.read(key: key);
    return num.parse(value!);
  }

  Future<bool> getBoolValue(String key) async {
    try {
      String? value = await storage.read(key: key);
      return value == "true";
    } catch (e) {
      debugPrint("e$e");
      return false;
    }
  }

  Future<String> getStringValue(String key) async {
    // String? value = await storage!.read(key: key);
    // return value.toString();
    try {
      String? value = await storage.read(key: key);
      return value!;
    } catch (e) {
      debugPrint("e$e");
      return "";
    }
  }
}
