// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/core/auth/domain/adapters/auth_repository_adapter.dart';
import 'package:getxstructurecode/utils/service/secure_local_storage.dart';

class AuthController extends GetxController {
  // AppState(super.initial);
  AuthController({required this.authRepository});
  final IAuthRepository authRepository;
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  Future<void> onLogin() async {
    debugPrint("Username:${usernameTextEditingController.value.text}");
    debugPrint("Password:${passwordTextEditingController.value.text}");
    final username = usernameTextEditingController.value.text;
    final password = passwordTextEditingController.value.text;
    await authRepository.onSubmitLogin(username, password).then((value) async {
      debugPrint("value$value");
      // await SecureLocalStorage.storeData("logged_in", value);
      String str = await SecureLocalStorage.getStringValue("logged_in");
      debugPrint("str$str");
      debugPrint("Hey logged_in");
    }, onError: (e) {
      debugPrint("Exss $e");
    });
  }

  // final loginInfo = LoginInfo2();
  // final repo = ValueNotifier<Repository2?>(null);

  Future<void> loginChange() async {
    // notifyListeners();

    // // this will call notifyListeners(), too
    // repo.value =
    //     loginInfo.loggedIn ? await Repository2.get(loginInfo.userName) : null;
  }

  @override
  void dispose() {
    // loginInfo.removeListener(loginChange);
    // repo.removeListener(notifyListeners);
    super.dispose();
  }
}
