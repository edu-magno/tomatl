import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../../shared/utils/constants/constants.dart';
import '../../../../shared/utils/formaters.dart';
import '../../../../shared/utils/sound_player.dart';
import '../../../core/flavors/flavor_config.dart';
import '../../../models/timer_type_model.dart';

typedef TimerState = CommonState<String, String>;

class TimerStateNotifier extends StateNotifier<TimerState> {
  TimerStateNotifier() : super(TimerState.initial());

  /// timer that tick each second
  Timer? _timer;

  /// total time of selected timer in minutes
  int _rawTime = 0;

  /// seconds of timer
  int _seconds = 60;

  /// bool that check if is a [intervaL] or [focus] time
  bool _isInterval = false;

  /// [_focusCount] that be increment after [focus] time over
  ///
  /// when count arrive in four they must be reseted
  int _focusCount = 1;

  TomatlTimer selectedTimer = FlavorConfig.instance!.values.timerTemplates[0];

  /// first tick of focus
  void initialTimer() {
    state =
        TimerState.successful(timeFormat(selectedTimer.focus, 0), false, false);
    _rawTime =
        rawTimeFormat(FlavorConfig.instance!.values.timerTemplates[0].focus);
  }

  void selectTimer(TomatlTimer timer) {
    pauseTimer();
    state = TimerState.successful(timeFormat(timer.focus, 0), false, false);

    _rawTime = rawTimeFormat(timer.focus);
    _seconds = 60;
  }

  void startTimer() {
    final player = AudioPlayer();

    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        _rawTime -= 1;

        if (_rawTime == 0) {
          final previousIsInterval =
              (state as CommonStateSuccessful).booleanOption;

          _isInterval = !previousIsInterval;

          _focusCount = previousIsInterval ? _focusCount : _focusCount += 1;
          // when [rawTime] arrive in 0 they must
          // restart with [interval] or [focus]

          // if [focusCount] is 4, the next [interval] must be 4 time longer
          final intervalRawTime = _focusCount == 4
              ? rawTimeFormat(selectedTimer.interval) * 4
              : rawTimeFormat(selectedTimer.interval);

          if (_focusCount == 4) {
            _focusCount = 1;
          }

          // if [previousIsInterval] is true,
          // raw time receive  focus time else  interval time
          _rawTime = previousIsInterval
              ? rawTimeFormat(selectedTimer.focus)
              : intervalRawTime;

          // if [previousIsInterval] is true,
          // play endFocus sound, else play endInterval sound
          previousIsInterval
              ? playAlertSound(player, Constants.endFocusPath)
              : playAlertSound(player, Constants.endinterval);
        }

        // when [seconds] arrive in 0 they must restart
        if (_seconds == 0) {
          state = TimerState.successful(
              timeFormat(minutesFormat(_rawTime), 59), _isInterval, true);
          _seconds = 59;
          return;
        }

        state = TimerState.successful(
            timeFormat(minutesFormat(_rawTime), _seconds -= 1), _isInterval, true);
      },
    );
  }

  void pauseTimer() {
    if (_timer != null) {
      _timer?.cancel();
    }
  }
}
