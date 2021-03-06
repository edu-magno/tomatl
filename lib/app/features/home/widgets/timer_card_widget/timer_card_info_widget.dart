import 'package:flutter/material.dart';

import '../../../../../shared/theme/tomatl_colors.dart';
import '../../../../../shared/theme/tomatl_typography.dart';
import '../../../../../shared/widgets/default_container_widget.dart';

class FocusCardInfoWidget extends StatelessWidget {
  final int focus;
  final int interval;
  final bool isSelected;

  FocusCardInfoWidget({
    required this.interval,
    required this.focus,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Text(
        '$focus/$interval min',
        style: tomatlTypography.headline6?.copyWith(
          color:
              isSelected ? TomatlColors.primary.shade50 : TomatlColors.primary,
        ),
      ),
    );
  }
}
