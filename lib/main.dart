import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prohecomapp/config/routes.dart';
import 'package:prohecomapp/core/app_control/controller/app_controller.dart';
import 'package:prohecomapp/utils/service/secure_local_storage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await runZonedGuarded(() async {}, (error, stackTrace) {});
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
