import 'package:intl/intl.dart';

String timeFormat(int minutes, int seconds, {int? hour}) {
  if (hour == null) {
    return DateFormat('ms')
        .format(DateTime(0, 0, 0, 0, minutes, seconds))
        .toString();
  }

  return DateFormat('Hms')
      .format(DateTime(0, 0, 0, 0, minutes, seconds))
      .toString();
}

int rawTimeFormat(int minutes) {
  return minutes * 60;
}

int minutesFormat(int rawTime) {
  return rawTime ~/ 60;
}
