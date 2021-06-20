import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tomatl/shared/theme/tomatl_theme.dart';

import 'features/home/cubits/selected_timer_type.dart';
import 'features/home/pages/home_page.dart';

import 'models/timer_type_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectedTimerTypeCubit(
        TomatlTimer(
          id: 0,
          interval: 0,
          time: 1,
          title: '',
        ),
      ),
      child: MaterialApp(
        // Criar um themeData para usar as cores
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
