import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/widgets/theme/tomatl_theme.dart';
import 'features/select-timer-type/cubits/selected_timer_type.dart';
import 'features/select-timer-type/pages/select_timer_type_page.dart';
import 'features/timer/pages/timer_page.dart';
import 'models/timer_type_model.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectedTimerTypeCubit(TomatlTimer(
        id: 0,
        description: '',
        interval: 0,
        time: 1,
        title: '',
      )),
      child: MaterialApp(
        // Criar um themeData para usar as cores
        theme: tomatlDefaultTheme,
        initialRoute: '/',
        routes: {
          '/timer': (context) => TimerPage(),
        },
        home: Scaffold(
          body: SelectTimerTypePage(),
        ),
      ),
    );
  }
}
