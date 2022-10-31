import '../features/home/enums/tomatl_types.dart';

class TomatlTimer {
  final TomatlType type;
  final String title;
  final int focusMinutes;
  final int intervalMinutes;

  TomatlTimer({
    required this.title,
    required this.type,
    required this.intervalMinutes,
    required this.focusMinutes,
  });
}
