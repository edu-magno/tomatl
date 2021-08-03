import 'package:flutter/material.dart';
import '../../../../../shared/widgets/icon_button_widget.dart';

class PauseButtonWidget extends StatelessWidget {
  final void Function()? onTap;

  PauseButtonWidget({this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      icon: Icons.pause_circle,
      onTap: onTap,
    );
  }
}
