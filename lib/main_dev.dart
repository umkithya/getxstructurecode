//main_dev.dart
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      baseUrl: "https://thecoder-dev.com/api/v1/",
      version: "V1.0.0-Dev",
      name: "The Coder Dev Flavor",
    ),
  );
  runApp(const MyApp());
}
