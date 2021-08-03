import 'package:flutter/material.dart';
import '../../../../../shared/theme/tomatl_typography.dart';

class HomeTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Selecione o estilo do temporizador',

      overflow: TextOverflow.ellipsis,
      style: tomatlTypography.headline6?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
