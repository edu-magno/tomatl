import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/time_type.dart';

import '../../select-timer-type/cubits/selected_timer_type.dart';
import '../cubits/timer_cubit.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  TextStyle timerTextStyle = TextStyle(
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Tomatl',
          style: TextStyle(
            color: Color(0xFFC92222),
            fontFamily: 'ArchitectsDaughter',
            fontSize: 36.0,
          ),
        ),
        leading: IconButton(
          color: Color(0xFFC92222),
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
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
            ElevatedButton(
              child: Text('Iniciar'),
              onPressed: _cubitTimer.setTime,
            )
          ],
        ),
      ),
    );
  }
}
