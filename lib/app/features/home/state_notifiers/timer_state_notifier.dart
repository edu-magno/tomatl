import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/formaters.dart';
import '../../../core/flavors/flavor_config.dart';
import '../../../models/timer_type_model.dart';
import 'timer_state.dart';

class TimerStateNotifier extends StateNotifier<TimerState> {
  TimerStateNotifier() : super(TimerState.initial());
  final player = AudioPlayer();

  /// timer that tick each second
  Timer? _timer;

  TomatlTimer selectedTimer = FlavorConfig.instance!.values.timerTemplates[0];

  int seconds = 60;

  bool isInterval = false;

  int minutes = 0;

  String formatedTime = '00:00';

  void configTimer() {
    minutes =
        isInterval ? selectedTimer.intervalMinutes : selectedTimer.focusMinutes;

    seconds = 60;
    formatedTime = timeFormat(minutes, seconds);
  } 

  void selectTimer(TomatlTimer timer) {
    pauseTimer();
    selectedTimer = timer;
    configTimer();
    state = TimerState.select();
  }

  void startTimer() {
    state = isInterval ? TimerState.startInterval() : TimerState.startFocus();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        updateMinutesAndSeconds();
      },
    );
  }

  void pauseTimer() {
    if (_timer != null) {
      state = TimerState.paused();
      _timer?.cancel();
    }
  }

  void updateMinutesAndSeconds() {
    if (seconds == 60) {
      updateMinutes();
    }
    updateSeconds();
    state = TimerState.tick();

    if (seconds == 0) {
      seconds = 60;
      if (minutes == 0) {
        finishTickState();
      }
    }

    formatedTime = timeFormat(minutes, seconds);
  }

  void updateSeconds() {
    seconds -= 1;
  }

  void updateMinutes() {
    minutes -= 1;
  }

  void finishTickState() {
    isInterval = !isInterval;
    minutes =
        isInterval ? selectedTimer.intervalMinutes : selectedTimer.focusMinutes;
    state = TimerState.finishedTick();
  }
}
