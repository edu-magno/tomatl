import 'package:flutter/material.dart';
import 'package:tomatl/app/core/flavors/dev_values.dart';
import 'package:tomatl/app/core/flavors/flavor_config.dart';
import 'app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    flavors: Flavors.DEVELOPMENT,
    values: DevValues(),
  );

  runApp(App());
}
