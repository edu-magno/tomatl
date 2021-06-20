import '../../../models/timer_type_model.dart';

List<TomatlTimer> timerTypes = [
  TomatlTimer(
      id: 1,
      title: 'Padrão',
      interval: 5,
      time: 25,
      description:
          "Temporizador com  marcação de 25 minutos com intervalo de 5 minutos com uma pausa mais longa (30 minutos) a cada 4 marcações"),
  TomatlTimer(
      id: 2,
      title: 'Rápida',
      interval: 3,
      time: 15,
      description:
          "Temporizador com  marcação de 15 minutos com intervalo de 3 minutos com uma pausa mais longa (10 minutos) a cada 4 marcações"),
  TomatlTimer(
      id: 3,
      title: 'Longa',
      interval: 10,
      time: 50,
      description:
          "Temporizador com  marcação de 60 minutos com intervalo de 10 minutos com uma pausa mais longa (50 minutos) a cada 4 marcações"),
  TomatlTimer(
      id: 4,
      title: 'Custom',
      interval: 0,
      time: 0,
      description:
          "Você escolhe o tempo de cada marcação e intervalo, e nós calculamos a pausa mais longa para você :)")
];
