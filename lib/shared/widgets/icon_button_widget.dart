import 'package:flutter/material.dart';
import '../theme/tomatl_colors.dart';

import 'container_30_widget.dart';

class IconButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;

  IconButtonWidget({
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container30(
      child: InkWell(
        customBorder: CircleBorder(),
        child: Icon(
          icon,
          size: 48,
          color: TomatlColors.secondary,
        ),
        onTap: onTap,
      ),
    );
  }
}
