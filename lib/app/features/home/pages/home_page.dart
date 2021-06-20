import 'package:flutter/material.dart';
import 'package:tomatl/shared/theme/tomatl_colors.dart';
import 'package:tomatl/shared/theme/tomatl_theme.dart';
import 'package:tomatl/shared/widgets/vertical_spacing_20.dart';

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
            VerticalSpacing20(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTitle(),
                _buildHelpIcon(),
              ],
            ),
            VerticalSpacing20(),
            TimeTypeCardsComponent(),
            Spacer(),
            TimerComponent(),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() => Text(
        'Selecione o estilo do temporizador',
        style: TextStyle(
          color: Color(0xFF363636),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      );
  Widget _buildHelpIcon() => IconButton(
        icon: Icon(
          Icons.help_outline,
          color: TomatlColors.primary,
        ),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => Dialog(),
        ),
      );
}
