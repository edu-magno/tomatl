import 'dart:async';

import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../../shared/utils/formaters.dart';
import '../../../models/timer_type_model.dart';
import '../utils/timer_type.dart';
import 'select_timer_state_notifier.dart';

typedef TimerState = CommonState<String, String>;

class TimerStateNotifier extends StateNotifier<TimerState> {
  TimerStateNotifier({
    required SelectTimerStateNotifer selectFocusStateNotifier,
  })  : _selectTimerStateNotifier = selectFocusStateNotifier,
        super(TimerState.initial());

  final SelectTimerStateNotifer _selectTimerStateNotifier;

  /// timer that tick each second
  late Timer _timer;

  /// total time of selected timer in minutes
  int rawTime = 0;

  /// seconds of timer
  int seconds = 60;

  /// bool that check if is a intervaL or focus time
  bool isInterval = false;

  /// first tick of focus
  void initialTimer() {
    _selectTimerStateNotifier.timer(timerTypes[0]);

    state = TimerState.successful(
      timeFormat(timerTypes[0].focus, 0),
      false,
    );
  }

  void selectTimer() {
    final selectedTimer =
        ((_selectTimerStateNotifier.state as CommonStateSuccessful).success)
            as TomatlTimer;

    // first tick
    state = TimerState.successful(
      timeFormat(selectedTimer.focus, 0),
      false,
    );
  }

  void startTimer() {
    final selectedTimer =
        ((_selectTimerStateNotifier.state as CommonStateSuccessful).success)
            as TomatlTimer;

    rawTime = rawTimeFormat(selectedTimer.focus);
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        rawTime -= 1;

        if (rawTime == 0) {
          final previousIsInterval =
              (state as CommonStateSuccessful).booleanOption;

          isInterval = !previousIsInterval;
          // when rawTime arrive in 0 they must
          // restart with interval or focus
          rawTime = previousIsInterval
              ? rawTimeFormat(selectedTimer.focus)
              : rawTimeFormat(selectedTimer.interval);
        }


        // when seconds arrive in 0 they must restart
        if (seconds == 0) {
          state = TimerState.successful(
              timeFormat(minutesFormat(rawTime), 59), isInterval);
          seconds = 59;
          return;
        }

        state = TimerState.successful(
          timeFormat(minutesFormat(rawTime), seconds -= 1),
          isInterval,
        );
      },
    );
  }

  void pauseTimer() {
    _timer.cancel();
  }
}
