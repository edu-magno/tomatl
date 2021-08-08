import 'package:flutter/material.dart';

import '../../../../shared/theme/tomatl_theme.dart';
import '../../../../shared/widgets/vertical_spacing_20.dart';
import '../components/play_and_pause_component.dart';
import '../components/select_timer_card_list_component.dart';
import '../components/timer_component.dart';
import '../widgets/common_widgets/home_title_widget.dart';
import '../widgets/help_widget/help_widget.dart';

class HomePage extends StatelessWidget {
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
            SelectTimerCardListComponent(),
            Spacer(),
            TimerComponent(),
            PlayAndPauseComponent(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
