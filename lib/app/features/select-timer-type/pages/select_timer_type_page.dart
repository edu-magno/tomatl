import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tomatl/app/features/select-timer-type/cubits/selected_timer_type.dart';
import 'package:tomatl/app/features/select-timer-type/utils/timer_type.dart';
import 'package:tomatl/app/features/select-timer-type/widgets/timer_type_card_widget.dart';
import 'package:tomatl/app/models/timer_type_model.dart';
import 'package:tomatl/shared/widgets/theme/tomatl_theme.dart';

class SelectTimerTypePage extends StatefulWidget {
  @override
  _SelectTimerTypePageState createState() => _SelectTimerTypePageState();
}

class _SelectTimerTypePageState extends State<SelectTimerTypePage> {
  @override
  Widget build(BuildContext context) {
    final tomatlTimer = BlocProvider.of<SelectedTimerTypeCubit>(
      context,
    ).state;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tomatl',
          style: tomatlDefaultTextTheme.headline4,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 20.0,
            ),
            Text(
              'Selecione o estilo do temporizador',
              style: TextStyle(
                  color: Color(0xFF363636),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _buildTimeTypeCards(context, tomatlTimer),
              ),
            ),
            Container(
              height: 30.0,
            ),

            // AnthorSkeletonOrWidget(),
          ],
        ),
      ),
    );
  }

  _continueButton(TomatlTimer tomatlTimer) => Container(
        margin: EdgeInsets.all(20.0),
        child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: MediaQuery.of(context).size.width * 0.88,
              height: 45.0,
            ),
            child: ElevatedButton(
              onPressed: tomatlTimer.id == 0
                  ? null
                  : () => Navigator.pushNamed(
                        context,
                        '/timer',
                      ),
              child: Text(
                'Prosseguir',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            )),
      );

  List<TimeTypeCardWidget> _buildTimeTypeCards(
          BuildContext context, TomatlTimer tomatlTimer) =>
      timerTypes
          .map((timer) => TimeTypeCardWidget(
                title: timer.title,
                description: timer.description,
                isSelected: timer.id == tomatlTimer.id ? true : false,
                onTap: () => setState(() {
                  BlocProvider.of<SelectedTimerTypeCubit>(context)
                      .setTimer(timer);
                }),
              ))
          .toList();
}
