import 'package:flutter/material.dart';
import '../../../../../shared/theme/tomatl_typography.dart';

class HelpTitleWidget extends StatelessWidget {
  final String title;

  HelpTitleWidget({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: tomatlTypography.headline6,
    );
  }
}
