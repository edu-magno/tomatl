import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../home_providers.dart';
import '../utils/timer_template.dart';
import '../widgets/timer_card_widget/timer_card_widget.dart';

class SelectFocusCardListComponent extends StatefulWidget {
  @override
  _SelectFocusCardListComponentState createState() =>
      _SelectFocusCardListComponentState();
}

class _SelectFocusCardListComponentState
    extends State<SelectFocusCardListComponent> {
  int selectedFocusCard = 1;

  @override
  Widget build(BuildContext context) {
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
