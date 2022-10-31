import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_providers.dart';
import '../state_notifiers/timer_state.dart';
import '../widgets/common_widgets/play_button_widget.dart';

class PlayAndPauseComponent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerStateNotifierProvider);

    final isPaused = !(timerState is TimerStateTick);
    return PlayAndPauseButtonWidget(
      isPaused: isPaused,
      onTap: () {
        if (isPaused) {
          ref.read(timerStateNotifierProvider.notifier).startTimer();
        } else {
          ref.read(timerStateNotifierProvider.notifier).pauseTimer();
        }
      },
    );
  }
}
