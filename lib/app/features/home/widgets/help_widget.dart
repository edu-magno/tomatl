


import 'package:flutter/material.dart';
import '../../../../shared/theme/tomatl_colors.dart';

class HelpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  IconButton(
        icon: Icon(
          Icons.help_outline,
          color: TomatlColors.primary,
        ),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => Dialog(),
        ),
      );
  }
  
}