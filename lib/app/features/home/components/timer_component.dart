import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tomatl/app/models/timer_type_model.dart';
import 'package:tomatl/shared/utils/time_formatter.dart';
import 'package:tomatl/shared/widgets/icon_button_widget.dart';
import '../../../../shared/theme/tomatl_colors.dart';
import '../../../../shared/widgets/container_30_widget.dart';

import '../../../models/time_type.dart';
import '../cubits/selected_timer_type.dart';
import '../cubits/timer_cubit.dart';

class TimerComponent extends StatefulWidget {
  @override
  _TimerComponentState createState() => _TimerComponentState();
}

class _TimerComponentState extends State<TimerComponent> {
  bool isPlaying = false;
  bool isPause = false;

  // TODO (edu-magno) add this textStyle to theme
  final TextStyle timerTextStyle = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    final selectedCubit = BlocProvider.of<SelectedTimerTypeCubit>(context);
    final tomatlTimer = selectedCubit.state;
    final initialRawTime = tomatlTimer.time * 60;
    var _cubitTimer = TimerCubit(
      Time(
        rawTime: initialRawTime,
        minutes: initialRawTime ~/ 60,
        seconds: 60,
      ),
    );

    return BlocBuilder<SelectedTimerTypeCubit, TomatlTimer>(
      bloc: selectedCubit,
      builder: (context, state) {
        final rawTime = state.time * 60;

        _cubitTimer = TimerCubit(
          Time(
            rawTime: rawTime,
            seconds: 60,
            minutes: rawTime ~/ 60,
          ),
        );

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTimerCount(_cubitTimer),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPlayButton(_cubitTimer.setTime),
                  _buildPauseButton(_cubitTimer.pauseTime)
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildTimerCount(TimerCubit cubit) => BlocBuilder<TimerCubit, Time>(
        bloc: cubit,
        builder: (context, state) {
          final time = timeFormatter(
            hour: 0,
            minute: state.minutes,
            second: state.seconds,
          );

          return Center(
            child: Container(
              child: Text(
                time,
                style: timerTextStyle,
              ),
            ),
          );
        },
      );

  Widget _buildPlayButton(void Function()? onTap) => IconButtonWidget(
        icon: Icons.play_circle,
        onTap: onTap,
      );

  Widget _buildPauseButton(void Function()? onTap) => IconButtonWidget(
        icon: Icons.pause_circle,
        onTap: onTap,
      );
}
