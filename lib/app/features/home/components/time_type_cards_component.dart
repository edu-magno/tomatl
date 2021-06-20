import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/timer_type_model.dart';
import '../cubits/selected_timer_type.dart';
import '../utils/timer_type.dart';
import '../widgets/timer_type_card_widget.dart';

class TimeTypeCardsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tomatlTimer = BlocProvider.of<SelectedTimerTypeCubit>(
      context,
    ).state;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _buildTimeTypeCards(context, tomatlTimer),
      ),
    );
  }

  List<TimeTypeCardWidget> _buildTimeTypeCards(
          BuildContext context, TomatlTimer tomatlTimer) =>
      timerTypes
          .map(
            (timer) => TimeTypeCardWidget(
              title: timer.title,
              description: timer.description,
              isSelected: timer.id == tomatlTimer.id ? true : false,
              onTap: () => BlocProvider.of<SelectedTimerTypeCubit>(context)
                  .setTimer(timer),
            ),
          )
          .toList();
}
