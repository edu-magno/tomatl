import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tomatl/app/core/flavors/dev_values.dart';
import 'package:tomatl/app/core/flavors/flavor_config.dart';
import 'package:tomatl/app/features/home/pages/home_page.dart';

class AppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlavorConfig(flavors: Flavors.DEVELOPMENT, values: DevValues());

    return ProviderScope(
        child: MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: HomePage(),
      ),
    ));
  }
}
