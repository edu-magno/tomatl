import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/theme/tomatl_colors.dart';
import '../../../../shared/theme/tomatl_theme.dart';
import '../../../../shared/widgets/vertical_spacing_20.dart';
import '../components/select_focus_card_list_component.dart';
import '../components/timer_component.dart';
import '../home_providers.dart';
import '../widgets/pause_button_widget.dart';
import '../widgets/play_button_widget.dart';

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
            SelectFocusCardListComponent(),
            Spacer(),
            TimerComponent(),
            Row(
              children: [
                PlayButtonWidget(
                  onTap: () {
                    context
                        .read(focusStateNotifierProvider.notifier)
                        .startFocus();
                  },
                ),
                PauseButtonWidget(
                  onTap: () {
                    context
                        .read(focusStateNotifierProvider.notifier)
                        .pauseFocus();
                  },
                )
              ],
            ),
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
