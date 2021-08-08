import '../../models/timer_type_model.dart';

abstract class FlavorValues {
  FlavorValues({required this.timerTemplates});
  final List<TomatlTimer> timerTemplates;
}
