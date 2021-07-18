import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../models/timer_type_model.dart';

typedef SelectTimerState = CommonState<String, TomatlTimer>;

class SelectTimerStateNotifer extends StateNotifier<SelectTimerState> {
  SelectTimerStateNotifer() : super(SelectTimerState.initial());

  void timer(TomatlTimer selectedTimer) =>
      state = SelectTimerState.successful(selectedTimer, false);
}
