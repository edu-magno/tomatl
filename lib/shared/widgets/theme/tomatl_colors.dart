import 'package:flutter/material.dart';

mixin TomatlColors {
  static const _primary = 0xFF455a64;
  static final MaterialColor primary = MaterialColor(_primary, <int, Color>{
    50: Color(0xFFeceff1),
    100: Color(0xFFcfd8dc),
    200: Color(0xFFb0bec5),
    300: Color(0xFF90a4ae),
    400: Color(0xFF78909c),
    500: Color(0xFF607d8b),
    600: Color(0xFF546e7a),
    700: Color(_primary),
    800: Color(0xFF37474f),
    900: Color(0xFF263238),
  });

  static const _secondary = 0xFFc92222;
  static final MaterialColor secondary = MaterialColor(_secondary, <int, Color>{
    50: Color(0xFFffebee),
    100: Color(0xFFffccd1),
    200: Color(0xFFf19998),
    300: Color(0xFFe87170),
    400: Color(0xFFf2504b),
    500: Color(0xFFf63f2f),
    600: Color(0xFFe8352f),
    700: Color(0xFFd62a29),
    800: Color(_secondary),
    900: Color(0xFFba1315),
  });
}
