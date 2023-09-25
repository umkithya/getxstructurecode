import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:prohecomapp/utils/service/secure_local_storage.dart';

class AppController extends ChangeNotifier {
  // final notifier = ValueNotifier<int>(0);
  bool loginState = false;
  bool get loggedIn => loginState;
  Future<void> checkAuth() async {
    debugPrint("Before");
    // const storage = FlutterSecureStorage();
    // await storage.containsKey(key: "token").then((rs) {
    //   debugPrint("Res:$rs");
    // }, onError: (e) {
    //   debugPrint("Error$e");
    // });
    String result = await SecureLocalStorage.instance.getStringValue("token");
    loginState = result.isNotEmpty;
    notifyListeners();
    // loginState = str != "";
    debugPrint("result $result");
    print("isLoggedIn$loginState");
  }
}
