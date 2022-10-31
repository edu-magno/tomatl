import 'package:intl/intl.dart';

String timeFormat(int minutes, int seconds, {int? hour}) {
    if (seconds == 60) {
      seconds = 0;
    }
  if (hour == null) {
    return DateFormat('ms')
        .format(DateTime(0, 0, 0, 0, minutes, seconds))
        .toString();
  }

  return DateFormat('Hms')
      .format(DateTime(0, 0, 0, 0, minutes, seconds))
      .toString();
}
