import '../../features/home/enums/tomatl_types.dart';
import '../../models/timer_type_model.dart';
import 'flavor_values.dart';

class DevValues implements FlavorValues {
  @override
  List<TomatlTimer> get timerTemplates => [
        TomatlTimer(
          focusMinutes: 2,
          intervalMinutes: 1,
          title: 'Padrão',
          type: TomatlType.medium,
        ),
        TomatlTimer(
          focusMinutes: 3,
          intervalMinutes: 0,
          title: 'Rápida',
          type: TomatlType.short,
        ),
        TomatlTimer(
          focusMinutes: 1,
          intervalMinutes: 0,
          title: 'Longa',
          type: TomatlType.long,
        ),
        // TODO add custom timer
      ];
}
