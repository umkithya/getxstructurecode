import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getxstructurecode/config/routes.dart';
import 'package:getxstructurecode/utils/service/secure_local_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await runZonedGuarded(() async {
    SecureLocalStorage.init();
  }, (error, stackTrace) {
    debugPrint("");
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
