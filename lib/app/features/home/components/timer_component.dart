import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/theme/tomatl_typography.dart';
import '../home_providers.dart';

class TimerComponent extends StatefulWidget {
  @override
  _TimerComponentState createState() => _TimerComponentState();
}

class _TimerComponentState extends State<TimerComponent> {
  @override
  void initState() {
    super.initState();
    context.read(timerStateNotifierProvider.notifier).initialTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(timerStateNotifierProvider);

        return state.maybeWhen(
          successful: (time, isInterval, isPlaying) {
            if (isInterval) {
              return Column(
                children: [
                  Text(
                    '${AppLocalizations.of(context)?.interval}'.toUpperCase(),
                    style: tomatlTypography.subtitle1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    time,
                    style: tomatlTypography.headline1,
                  )
                ],
              );
            }

            return Column(
              children: [
                Text(
                  '${AppLocalizations.of(context)?.focus}'.toUpperCase(),
                  style: tomatlTypography.subtitle1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  time,
                  style: tomatlTypography.headline1,
                )
              ],
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
