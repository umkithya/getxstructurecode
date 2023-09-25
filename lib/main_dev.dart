//main_dev.dart
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main.dart';
import 'network/end_point.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      baseUrl: BaseUrl.dev,
      version: "V1.0.0-Dev",
      name: "The Coder Dev Flavor",
    ),
  );
  runApp(const MyApp());
}
