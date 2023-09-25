//main_pro.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prohecomapp/network/end_point.dart';

import 'core/app_control/controller/app_controller.dart';
import 'flavor_config.dart';
import 'main.dart';
import 'utils/service/secure_local_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

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

    await appController.checkAuth();
    debugPrint("w");
  }, (error, stackTrace) {});
  runApp(const MyApp());
}
