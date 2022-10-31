import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/theme/tomatl_typography.dart';
import '../home_providers.dart';

class TimerComponent extends ConsumerStatefulWidget {
  @override
  ConsumerState<TimerComponent> createState() => _TimerComponentState();
}

class _TimerComponentState extends ConsumerState<TimerComponent> {
  @override
  void initState() {
    super.initState();

    ref.read(timerStateNotifierProvider.notifier).configTimer();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(timerStateNotifierProvider.notifier);
    final state = ref.watch(timerStateNotifierProvider);
    final title = notifier.isInterval
        ? AppLocalizations.of(context)?.interval
        : AppLocalizations.of(context)?.focus;
    return Column(
      children: [
        Text(
          title!,
          style:
              tomatlTypography.subtitle1?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          notifier.formatedTime,
          style: tomatlTypography.headline1,
        ),
      ],
    );
  }
}
