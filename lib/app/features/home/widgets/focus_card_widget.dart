import 'package:flutter/material.dart';

import '../../../../shared/theme/tomatl_colors.dart';
import '../../../../shared/widgets/vertical_spacing_10.dart';
import '../../../models/timer_type_model.dart';
import 'focus_card_info_widget.dart';
import 'focus_card_title_widget.dart';

class FocusCardWidget extends StatelessWidget {
  final TomatlTimer timer;
  final void Function()? onTap;
  final bool isSelected;

  FocusCardWidget({
    required this.timer,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 125,
        margin: EdgeInsets.all(10.0),
        child: Card(
          color: isSelected ? TomatlColors.secondary : Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FocusCardTitleWidget(
                title: timer.title,
                isSelected: isSelected,
              ),
              FocusCardInfoWidget(
                interval: timer.interval,
                focus: timer.focus,
                isSelected: isSelected,
              ),
              VerticalSpacing10(),
            ],
          ),
        ),
      ),
    );
  }
}
