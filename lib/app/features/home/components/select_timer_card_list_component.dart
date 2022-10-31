import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/flavors/flavor_config.dart';
import '../enums/tomatl_types.dart';
import '../home_providers.dart';
import '../widgets/timer_card_widget/timer_card_widget.dart';

class SelectTimerCardListComponent extends ConsumerStatefulWidget {
  @override
  _SelectTimerCardListComponentState createState() =>
      _SelectTimerCardListComponentState();
}

class _SelectTimerCardListComponentState
    extends ConsumerState<SelectTimerCardListComponent> {
  TomatlType selectedFocusCard = TomatlType.medium;

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
                isSelected: timer.type == selectedFocusCard,
                onTap: () {
                  setState(() => selectedFocusCard = timer.type);
                  ref
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
