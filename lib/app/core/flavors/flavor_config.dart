import 'flavor_values.dart';

enum Flavors {
  DEVELOPMENT,
  PRODUCTION,
}

class FlavorConfig {
  final Flavors flavor;
  final FlavorValues values;
  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavors flavors,
    required FlavorValues values,
  }) =>
      _instance ??= FlavorConfig._internal(flavors, values);

  FlavorConfig._internal(this.flavor, this.values);

  static FlavorConfig? get instance => _instance;

  bool get isProduction => _instance?.flavor == Flavors.PRODUCTION;
  bool get isDevelopment => _instance?.flavor == Flavors.DEVELOPMENT;
}
