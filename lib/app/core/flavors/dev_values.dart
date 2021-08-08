import '../../models/timer_type_model.dart';
import 'flavor_values.dart';

class DevValues implements FlavorValues {
  @override
  List<TomatlTimer> get timerTemplates => [
        TomatlTimer(
          id: 1,
          focus:  2,
          interval: 1,
          title: 'Padrão',
        ),
        TomatlTimer(
          id: 2,
          focus: 1,
          interval: 0,
          title: 'Rápida',
        ),
        TomatlTimer(
          id: 3,
          focus: 0,
          interval: 0,
          title: 'Longa',
        ),
        // TODO add custom timer
      ];
}
