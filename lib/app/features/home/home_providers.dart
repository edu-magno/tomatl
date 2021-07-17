import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state_notifiers/focus_state_notifier.dart';
import 'state_notifiers/interval_state_notifier.dart';
import 'state_notifiers/select_focus_state_notifier.dart';

final selectFocusStateNotifierProvider =
    StateNotifierProvider<SelectTimerStateNotifer, SelectFocusState>(
  (ref) => SelectTimerStateNotifer(),
);

final focusStateNotifierProvider =
    StateNotifierProvider<FocusStateNotifier, FocusState>(
  (ref) => FocusStateNotifier(
    selectFocusStateNotifier:
        ref.watch(selectFocusStateNotifierProvider.notifier),
  ),
);

final intervalStateNotifierProvider =
    StateNotifierProvider<IntervalStateNotifier, IntervalState>(
  (ref) => IntervalStateNotifier(
    selectFocusStateNotifier:
        ref.watch(selectFocusStateNotifierProvider.notifier),
  ),
);
