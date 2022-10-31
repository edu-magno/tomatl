import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state_notifiers/timer_state.dart';
import 'state_notifiers/timer_state_notifier.dart';


final timerStateNotifierProvider =
    StateNotifierProvider<TimerStateNotifier, TimerState>(
  (ref) => TimerStateNotifier(),
);
