import 'package:flutter/material.dart';

import '../../../../shared/widgets/theme/tomatl_theme.dart';
import '../components/time_type_cards_component.dart';
import '../components/timer_component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tomatl',
          style: tomatlDefaultTextTheme.headline4,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 20.0,
            ),
            Text(
              'Selecione o estilo do temporizador',
              style: TextStyle(
                  color: Color(0xFF363636),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 20.0,
            ),
            TimeTypeCardsComponent(),
            TimerComponent(),
          ],
        ),
      ),
    );
  }
}
