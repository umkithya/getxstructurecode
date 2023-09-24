//main_pre.dart
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main.dart';
import 'network/end_point.dart';

Future<void> main() async{
  FlavorConfig(
    flavor: Flavor.pre,
    values: FlavorValues(
      baseUrl: BaseUrl.pre,
      version: "V1.0.0-Pre",
      name: "The Coder Pre Flavor",
    ),
  );
  runApp(const MyApp());
}
