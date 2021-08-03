import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/theme/tomatl_theme.dart';
import '../../../../shared/widgets/vertical_spacing_20.dart';
import '../components/select_focus_card_list_component.dart';
import '../components/timer_component.dart';
import '../home_providers.dart';
import '../widgets/common_widgets/home_title_widget.dart';
import '../widgets/common_widgets/pause_button_widget.dart';
import '../widgets/common_widgets/play_button_widget.dart';
import '../widgets/help_widget/help_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tomatl',
          style: tomatlLogoTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            VerticalSpacing20(),
            HomeTitleWidget(),
            HelpWidget(),
            SelectFocusCardListComponent(),
            Spacer(),
            TimerComponent(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isPlaying
                    ? PauseButtonWidget(
                        onTap: () {
                          context
                              .read(timerStateNotifierProvider.notifier)
                              .pauseTimer();
                          setState(() {
                            isPlaying = false;
                          });
                        },
                      )
                    : PlayButtonWidget(
                        onTap: () {
                          context
                              .read(timerStateNotifierProvider.notifier)
                              .startTimer();
                          setState(() {
                            isPlaying = true;
                          });
                        },
                      ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
