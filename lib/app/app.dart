import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/theme/tomatl_theme.dart';
import 'features/home/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales:
            AppLocalizations.supportedLocales // Portuguese, Brasil
        ,
        theme: tomatlDefaultTheme,
        initialRoute: '/',
        routes: {},
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
