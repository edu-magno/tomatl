import 'package:flutter/material.dart';
import '../../../../shared/widgets/icon_button_widget.dart';

class PlayButtonWidget extends StatelessWidget {
  final void Function()? onTap;

  PlayButtonWidget({this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      icon: Icons.play_circle,
      onTap: onTap,
    );
  }
}
