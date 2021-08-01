import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../../shared/utils/constants/constants.dart';
import '../../../../shared/utils/formaters.dart';
import '../../../models/timer_type_model.dart';
import '../utils/sound_player.dart';
import '../utils/timer_type.dart';

typedef TimerState = CommonState<String, String>;

class TimerStateNotifier extends StateNotifier<TimerState> {
  TimerStateNotifier() : super(TimerState.initial());

  /// timer that tick each second
  late Timer _timer;

  /// total time of selected timer in minutes
  int rawTime = 0;

  /// [seconds] of timer
  int seconds = 60;

  /// bool that check if is a [intervaL] or [focus] time
  bool isInterval = false;

  /// [focusCount] that be increment after [focus] time over
  ///
  /// when count arrive in four they must be reseted
  int focusCount = 1;

  TomatlTimer selectedTimer = timerTypes[0];

  /// first tick of focus
  void initialTimer() {
    state = TimerState.successful(
      timeFormat(selectedTimer.focus, 0),
      false,
    );
    rawTime = rawTimeFormat(timerTypes[0].focus);
  }

  void selectTimer(TomatlTimer timer) {
    // first tick
    state = TimerState.successful(
      timeFormat(timer.focus, 0),
      false,
    );

    rawTime = rawTimeFormat(timer.focus);
    seconds = 60;
  }

  void startTimer() {
    final player = AudioPlayer();

    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        rawTime -= 1;

        if (rawTime == 0) {
          final previousIsInterval =
              (state as CommonStateSuccessful).booleanOption;

          isInterval = !previousIsInterval;

          focusCount = previousIsInterval ? focusCount : focusCount += 1;
          // when [rawTime] arrive in 0 they must
          // restart with [interval] or [focus]

          // if [focusCount] is 4, the next [interval] must be 4 time longer
          final intervalRawTime = focusCount == 4
              ? rawTimeFormat(selectedTimer.interval) * 4
              : rawTimeFormat(selectedTimer.interval);

          if (focusCount == 4) {
            focusCount = 1;
          }

          // if [previousIsInterval] is true is focus time else is interval
          rawTime = previousIsInterval
              ? rawTimeFormat(selectedTimer.focus)
              : intervalRawTime;

          previousIsInterval
              ? playAlertSound(player, Constants.endFocusPath)
              : playAlertSound(player, Constants.endinterval);
        }

        // when [seconds] arrive in 0 they must restart
        if (seconds == 0) {
          state = TimerState.successful(
            timeFormat(minutesFormat(rawTime), 59),
            isInterval,
          );
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
