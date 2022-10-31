import 'package:flutter_test/flutter_test.dart';
import 'package:tomatl/app/features/home/state_notifiers/timer_state.dart';
import 'package:tomatl/app/features/home/state_notifiers/timer_state_notifier.dart';
import 'package:tomatl/app/models/timer_type_model.dart';
import 'package:tomatl/shared/utils/formaters.dart';

void main() {
  group('timer state notifier', () {
    final timerStateNotifier = TimerStateNotifier();
    test('initial state', () {
      expect(
        timerStateNotifier.debugState,
        equals(TimerState.initial()),
      );
    });

    test('when call initialTimer() , the state should be successful', () {
      final initialTimerMock = timeFormat(25, 0);

      timerStateNotifier.initialTimer();

      expect(
          timerStateNotifier.debugState,
          isA<CommonStateSuccessful<String, String>>().having((r) => r.success,
              'initial timer success', equals(initialTimerMock)));
      expect(
          timerStateNotifier.debugState,
          isA<CommonStateSuccessful<String, String>>()
              .having((r) => r.booleanOption, 'is interval', equals(false)));
    });

    test('when call selectTimer(), the state should be successful', () {
      final tomatlTimerMock =
          TomatlTimer(title: '', id: 1, intervalMinutes: 10, focusMinutes: 50);
      final selectTimerMock = timeFormat(tomatlTimerMock.focusMinutes, 0);

      timerStateNotifier.selectTimer(tomatlTimerMock);

      expect(
          timerStateNotifier.debugState,
          isA<CommonStateSuccessful<String, String>>().having((r) => r.success,
              'select Timer success', equals(selectTimerMock)));
      expect(
          timerStateNotifier.debugState,
          isA<CommonStateSuccessful<String, String>>()
              .having((r) => r.booleanOption, 'is interval', equals(false)));
    });
  });
}
