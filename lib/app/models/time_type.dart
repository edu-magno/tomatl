import 'timer_type_model.dart';

class Time {
  int focus;
  int seconds;
  int interval;
  bool isInterval;
  Time({
    required this.isInterval,
    required this.seconds,
    required this.focus,
    required this.interval,
  });

  /// `timer` is of type [TomatlTimer] and set focus and interval of [Time]
  ///
  /// `isInterval` is a bool that check if the [Time] is a interval or not
  ///
  /// `seconds` is a int that represents the current second in state
  ///
  factory Time.factory(TomatlTimer timer, bool isInterval, int seconds) {
    return Time(
      isInterval: isInterval,
      seconds: seconds,
      focus: timer.focus,
      interval: timer.interval,
    );
  }
}
