import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prohecomapp/core/auth/presentation/binding/auth_binding.dart';

import '../controller/auth_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    AuthBinding().dependencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Login to be continue",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: authController.usernameTextEditingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              controller: authController.passwordTextEditingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
          ),
          ElevatedButton(
              onPressed: () => authController.onLogin(),
              child: const Text("Login"))
        ]),
      ),
    );
  }
}
