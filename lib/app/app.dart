import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../shared/theme/tomatl_theme.dart';

import 'features/home/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
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
