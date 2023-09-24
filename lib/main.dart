import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstructurecode/config/routes.dart';
import 'package:getxstructurecode/core/app_control/controller/app_controller.dart';
import 'package:getxstructurecode/utils/service/secure_local_storage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await runZonedGuarded(() async {
    SecureLocalStorage.init();
  }, (error, stackTrace) {});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppController>.value(
        value: appController,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ));
  }
}
