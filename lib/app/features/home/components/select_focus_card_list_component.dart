import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../home_providers.dart';
import '../utils/timer_type.dart';
import '../widgets/focus_card_widget.dart';

class SelectFocusCardListComponent extends StatefulWidget {
  @override
  _SelectFocusCardListComponentState createState() =>
      _SelectFocusCardListComponentState();
}

class _SelectFocusCardListComponentState
    extends State<SelectFocusCardListComponent> {
  int? selectedFocusCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: timerTypes
            .map(
              (timer) => FocusCardWidget(
                timer: timer,
                isSelected: timer.id == selectedFocusCard,
                onTap: () {
                  setState(() => selectedFocusCard = timer.id);

                  context
                      .read(selectFocusStateNotifierProvider.notifier)
                      .focus(timer);
                  context
                      .read(focusStateNotifierProvider.notifier)
                      .selectFocus();
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
