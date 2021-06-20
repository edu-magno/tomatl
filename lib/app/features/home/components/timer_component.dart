import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/time_type.dart';
import '../cubits/selected_timer_type.dart';
import '../cubits/timer_cubit.dart';

class TimerComponent extends StatelessWidget {
  final TextStyle timerTextStyle = TextStyle(
    fontSize: 64.0,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    final tomatlTimer = BlocProvider.of<SelectedTimerTypeCubit>(context).state;
    final rawTime = tomatlTimer.time * 60;
    final _cubitTimer = TimerCubit(
      Time(
        rawTime: tomatlTimer.time * 60,
        minutes: rawTime ~/ 60,
        seconds: 60,
      ),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<TimerCubit, Time>(
            bloc: _cubitTimer,
            builder: (context, state) {
              return Text(
                '${state.minutes}:${state.seconds}',
                style: timerTextStyle,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.play_circle),
            onPressed: _cubitTimer.setTime,
          )
        ],
      ),
    );
  }
}
