// import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/core/auth/domain/adapters/auth_repository_adapter.dart';

import '../../../../network/dio_exceptions.dart';

class AuthController extends GetxController {
  // AppState(super.initial);
  AuthController({required this.authRepository});
  final IAuthRepository authRepository;
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  Future<void> onLogin() async {
    try {
      debugPrint("Username:${usernameTextEditingController.value.text}");
      debugPrint("Password:${passwordTextEditingController.value.text}");
      final username = usernameTextEditingController.value.text;
      final password = usernameTextEditingController.value.text;
      authRepository.onSubmitLogin(username, password);
    } on DioException catch (e) {
      debugPrint("Error${e.error}");
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
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
