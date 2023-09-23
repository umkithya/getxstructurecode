//main_pro.dart
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.pro,
    values: FlavorValues(
      baseUrl: "https://thecoder-pro.com/api/v1/",
      version: "V1.0.0",
      name: "The Coder Pro Flavor",
    ),
  );
  runApp(const MyApp());
}
