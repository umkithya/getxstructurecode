//main_pro.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/network/end_point.dart';

import 'core/app_control/controller/app_controller.dart';
import 'flavor_config.dart';
import 'main.dart';
import 'utils/service/secure_local_storage.dart';

Future<void> main() async {
  FlavorConfig(
    flavor: Flavor.pro,
    values: FlavorValues(
      baseUrl: BaseUrl.pro,
      version: "V1.0.0",
      name: "The Coder Pro Flavor",
    ),
  );
  final appController = Get.put(AppController());

  await runZonedGuarded(() async {
    debugPrint("Hi");
    SecureLocalStorage.init();

    await appController.checkAuth();
  }, (error, stackTrace) {});
  runApp(const MyApp());
}
