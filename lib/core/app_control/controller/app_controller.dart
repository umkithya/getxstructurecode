import 'package:flutter/material.dart';
import 'package:getxstructurecode/utils/service/secure_local_storage.dart';

class AppController extends ChangeNotifier {
  // final notifier = ValueNotifier<int>(0);
  bool loginState = false;
  bool get loggedIn => loginState;
  Future<void> checkAuth() async {
    // String str = await SecureLocalStorage.getStringValue("logged_in");
    // loginState = str != "";
    // debugPrint("isLoggedIn $isLoggedIn");
    print("isLoggedIn$loginState");
  }
}
