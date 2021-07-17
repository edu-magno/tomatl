import 'dart:async';

import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../models/time_type.dart';
import '../../../models/timer_type_model.dart';
import 'select_focus_state_notifier.dart';

typedef FocusState = CommonState<String, Time>;

class FocusStateNotifier extends StateNotifier<FocusState> {
  FocusStateNotifier({
    required SelectTimerStateNotifer selectFocusStateNotifier,
  })  : _selectFocusStateNotifier = selectFocusStateNotifier,
        super(FocusState.initial());

  final SelectTimerStateNotifer _selectFocusStateNotifier;
  late Timer _timer;
  int rawTime = 0;

  // first tick of focus
  void initialFocus() {
    final initialTime = Time(
      isInterval: false,
      seconds: 0,
      focus: 0,
      interval: 0,
    );

    state = FocusState.successful(initialTime);
  }

  void selectFocus() {
    final selectedTimer =
        ((_selectFocusStateNotifier.state as CommonStateSuccessful).s)
            as TomatlTimer;
    final initialTime = Time(
      isInterval: false,
      seconds: 0,
      focus: selectedTimer.focus,
      interval: selectedTimer.interval,
    );

    // first tick
    state = FocusState.successful(initialTime);
  }

  void startFocus() {
    final selectedTimer =
        ((_selectFocusStateNotifier.state as CommonStateSuccessful).s)
            as TomatlTimer;

    rawTime = selectedTimer.interval * 60;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (rawTime == 0) {
        timer.cancel();
      }

      rawTime -= 1;

      final previousState = ((state as CommonStateSuccessful).s as Time);

      state = FocusState.successful(
        Time(
          isInterval: false,
          seconds: previousState.seconds = previousState.seconds - 1,
          focus: previousState.focus,
          interval: rawTime ~/ 60,
        ),
      );

      if (previousState.seconds == 0) {
        state = FocusState.successful(
          Time(
            isInterval: false,
            seconds: 59,
            focus: previousState.focus,
            interval: rawTime ~/ 60,
          ),
        );
      }
    });
  }

  void pauseFocus() {
    _timer.cancel();
  }
}
