import 'package:flutter/material.dart';

import '../../../../../shared/theme/tomatl_colors.dart';
import '../../../../../shared/theme/tomatl_typography.dart';
import '../../../../../shared/widgets/default_container_widget.dart';

class FocusCardTitleWidget extends StatelessWidget {
  final String title;
  final bool isSelected;

  FocusCardTitleWidget({
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Text(
        title,
        style: tomatlTypography.headline6?.copyWith(
          fontWeight: FontWeight.bold,
          color:
              isSelected ? TomatlColors.primary.shade50 : TomatlColors.primary,
        ),
      ),
    );
  }
}
