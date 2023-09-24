import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/core/app_control/controller/app_controller.dart';
import 'package:getxstructurecode/core/auth/presentation/view/login_page.dart';
import 'package:getxstructurecode/module/details/presentation/view/detail_page.dart';
import 'package:getxstructurecode/module/home/presentation/view/home_page.dart';
import 'package:go_router/go_router.dart';

final appController = Get.find<AppController>();
final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(path: "/", builder: (context, state) => const HomePage(), routes: [
      GoRoute(
        path: "detail",
        builder: (context, state) => const DetailPage(),
      ),
    ]),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
  ],
  // ignore: body_might_complete_normally_nullable
  redirect: (context, state) {
    final loggedIn = appController.loggedIn;
    final isLoginPath = state.matchedLocation == "/login";
    if (!loggedIn) return isLoginPath ? null : "/login";

    // return null;
  },
);
