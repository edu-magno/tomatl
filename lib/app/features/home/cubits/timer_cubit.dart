import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../models/time_type.dart';

class TimerCubit extends Cubit<Time> {
  late Timer timer;
  TimerCubit(Time initialState) : super(initialState);

  void setTime() {
    timer = Timer.periodic(
        Duration(
          seconds: 1,
        ), (timer) {
      emit(Time(
        rawTime: state.rawTime -= 1,
        seconds: state.seconds = state.seconds - 1,
        minutes: state.rawTime ~/ 60,
      ));

      if (state.rawTime == 0) {
        timer.cancel();
      }

      if (state.seconds == 0) {
   
        emit(Time(
          rawTime: state.rawTime--,
          seconds: 60,
          minutes: state.rawTime ~/ 60,
        ));
      }
    });
  }

  void pauseTime() {
    timer.cancel();
  }
}
