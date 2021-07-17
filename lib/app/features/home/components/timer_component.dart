import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../home_providers.dart';

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
  void initState() {
    super.initState();

    context.read(focusStateNotifierProvider.notifier).initialFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final state = watch(focusStateNotifierProvider);

      return state.maybeWhen(
        successful: (s) {
          return Column(
            children: [
              Text('${s.focus}: ${s.seconds}'),
            ],
          );
        },
        orElse: () => Text('00:00'),
      );
    });
  }
}
