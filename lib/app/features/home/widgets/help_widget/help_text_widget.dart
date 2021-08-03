import 'package:flutter/material.dart';
import '../../../../../shared/theme/tomatl_typography.dart';

class HelpTextWidget extends StatelessWidget {
  final String text;

  HelpTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: tomatlTypography.subtitle1,
    );
  }
}
