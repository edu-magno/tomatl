import 'dart:async';

import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../models/time_type.dart';
import '../../../models/timer_type_model.dart';
import 'select_focus_state_notifier.dart';

typedef IntervalState = CommonState<String, Time>;

class IntervalStateNotifier extends StateNotifier<IntervalState> {
  IntervalStateNotifier({
    required SelectTimerStateNotifer selectFocusStateNotifier,
  })  : _selectFocusStateNotifier = selectFocusStateNotifier,
        super(IntervalState.initial());

  final SelectTimerStateNotifer _selectFocusStateNotifier;
  late Timer _timer;
  int rawTime = 0;

  /// first tick of interval
  void initialInterval() {
    final selectedTimer =
        ((_selectFocusStateNotifier.state as CommonStateSuccessful).s)
            as TomatlTimer;

    final initialTime = Time(
      isInterval: true,
      seconds: 0,
      focus: selectedTimer.focus,
      interval: selectedTimer.interval,
    );

    state = IntervalState.successful(initialTime);
  }

  void startInterval() {
    final selectedTimer =
        ((_selectFocusStateNotifier.state as CommonStateSuccessful).s)
            as TomatlTimer;

    rawTime = selectedTimer.interval * 60;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (rawTime == 0) {
        timer.cancel();
        //   _focusStateNotifier.startFocus();
      }

      rawTime -= 1;

      final previousState = ((state as CommonStateSuccessful).s as Time);

      state = IntervalState.successful(
        Time(
          isInterval: true,
          seconds: previousState.seconds = previousState.seconds - 1,
          focus: previousState.focus,
          interval: rawTime ~/ 60,
        ),
      );

      if (previousState.seconds == 0) {
        state = IntervalState.successful(
          Time(
            isInterval: true,
            seconds: 59,
            focus: previousState.focus,
            interval: rawTime ~/ 60,
          ),
        );
      }
    });
  }

  void pauseInterval() {
    _timer.cancel();
  }
}
