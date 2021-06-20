String timeFormatter(
    {required int hour, required int minute, required int second}) {
  final isSecondLessThanTen = second < 10;
  final isMinuteLessThanTen = minute < 10;
  final isHourLessThanTen = hour < 10;

  var formattedHour = '$hour';
  var formattedMinute = '$minute';
  var formattedSecond = '$second';

  if (isMinuteLessThanTen) {
    formattedMinute = '0$minute';
  }

  if (isSecondLessThanTen) {
    formattedSecond = '0$second';
  }

  if (isHourLessThanTen) {
    formattedHour = '0$hour';
  }

  if (second == 60) {
    formattedSecond = '00';
  }

  if (hour == 0) {
    return '$formattedMinute:$formattedSecond';
  }

  return '$formattedHour:$formattedMinute:$formattedSecond';
}
