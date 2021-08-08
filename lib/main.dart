import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/core/flavors/flavor_config.dart';
import 'app/core/flavors/prod_values.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavors: Flavors.PRODUCTION,
    values: ProdValues(),
  );
  runApp(App());
}
