//main_pre.dart
import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.pre,
    values: FlavorValues(
      baseUrl: "https://thecoder-pre.com/api/v1/",
      version: "V1.0.0-Pre",
      name: "The Coder Pre Flavor",
    ),
  );
  runApp(const MyApp());
}
