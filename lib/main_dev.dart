import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/core/flavors/dev_values.dart';
import 'app/core/flavors/flavor_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    flavors: Flavors.DEVELOPMENT,
    values: DevValues(),
  );

  runApp(App());
}
