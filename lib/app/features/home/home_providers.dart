import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state_notifiers/select_timer_state_notifier.dart';
import 'state_notifiers/timer_state_notifier.dart';

final selectTimerStateNotifierProvider =
    StateNotifierProvider<SelectTimerStateNotifer, SelectTimerState>(
  (ref) => SelectTimerStateNotifer(),
);

final timerStateNotifierProvider =
    StateNotifierProvider<TimerStateNotifier, TimerState>(
  (ref) => TimerStateNotifier(
    selectFocusStateNotifier:
        ref.watch(selectTimerStateNotifierProvider.notifier),

  ),
);


