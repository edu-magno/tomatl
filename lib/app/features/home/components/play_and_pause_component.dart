import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/utils/common_state/common_state.dart';

import '../home_providers.dart';
import '../widgets/common_widgets/pause_button_widget.dart';
import '../widgets/common_widgets/play_button_widget.dart';

class PlayAndPauseComponent extends StatefulWidget {
  @override
  _PlayAndPauseComponentState createState() => _PlayAndPauseComponentState();
}

class _PlayAndPauseComponentState extends State<PlayAndPauseComponent> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return ProviderListener<CommonState>(
      onChange: (context, state) {
        state.maybeWhen(
          successful: (_, __, isPlayingStateValue) {
            setState(() {
              isPlaying = isPlayingStateValue;
            });
          },
          orElse: () => null,
        );
      },
      provider: timerStateNotifierProvider,
      child: isPlaying
          ? PauseButtonWidget(
              onTap: () {
                context.read(timerStateNotifierProvider.notifier).pauseTimer();
                setState(() {
                  isPlaying = false;
                });
              },
            )
          : PlayButtonWidget(
              onTap: () {
                context.read(timerStateNotifierProvider.notifier).startTimer();
                setState(() {
                  isPlaying = true;
                });
              },
            ),
    );
  }
}
