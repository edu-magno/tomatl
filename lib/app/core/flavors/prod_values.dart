import '../../features/home/enums/tomatl_types.dart';
import '../../models/timer_type_model.dart';
import 'flavor_values.dart';

class ProdValues implements FlavorValues {
  @override
  List<TomatlTimer> get timerTemplates => [
        TomatlTimer(
          focusMinutes: 25,
          intervalMinutes: 5,
          title: 'Padrão',
          type: TomatlType.medium,
        ),
        TomatlTimer(
          focusMinutes: 15,
          intervalMinutes: 3,
          title: 'Rápida',
          type: TomatlType.short,
        ),
        TomatlTimer(
          focusMinutes: 50,
          intervalMinutes: 10,
          title: 'Longa',
          type: TomatlType.long,
        ),
        // TODO add custom timer
      ];
}
