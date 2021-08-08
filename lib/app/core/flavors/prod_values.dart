import '../../models/timer_type_model.dart';
import 'flavor_values.dart';

class ProdValues implements FlavorValues {
  @override
  List<TomatlTimer> get timerTemplates => [
        TomatlTimer(
          id: 1,
          focus: 25,
          interval: 5,
          title: 'Padrão',
        ),
        TomatlTimer(
          id: 2,
          focus: 15,
          interval: 3,
          title: 'Rápida',
        ),
        TomatlTimer(
          id: 3,
          focus: 50,
          interval: 10,
          title: 'Longa',
        ),
        // TODO add custom timer
      ];
}
