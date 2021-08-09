import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/flavors/flavor_config.dart';
import '../home_providers.dart';
import '../widgets/timer_card_widget/timer_card_widget.dart';

class SelectTimerCardListComponent extends StatefulWidget {
  
  @override
  _SelectTimerCardListComponentState createState() =>
      _SelectTimerCardListComponentState();
}

class _SelectTimerCardListComponentState
    extends State<SelectTimerCardListComponent> {
  int selectedFocusCard = 1;

  @override
  Widget build(BuildContext context) {
    final timerTemplates = FlavorConfig.instance!.values.timerTemplates;

    return Container(
      height: 105,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: timerTemplates
            .map(
              (timer) => FocusCardWidget(
                timer: timer,
                isSelected: timer.id == selectedFocusCard,
                onTap: () {
                  setState(() => selectedFocusCard = timer.id);

                  context
                      .read(timerStateNotifierProvider.notifier)
                      .selectTimer(timer);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
