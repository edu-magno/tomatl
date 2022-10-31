import 'package:flutter/material.dart';
import '../../../../../shared/widgets/icon_button_widget.dart';

class PlayAndPauseButtonWidget extends StatelessWidget {
  final bool isPaused;
  final void Function()? onTap;

  PlayAndPauseButtonWidget({
    this.onTap,
    this.isPaused = true,
  });

  @override
  Widget build(BuildContext context) {
    return IconButtonWidget(
      icon: isPaused ? Icons.play_circle : Icons.pause_circle,
      onTap: onTap,
    );
  }
}
