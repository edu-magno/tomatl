import 'package:state_notifier/state_notifier.dart';

import '../../../../shared/utils/common_state/common_state.dart';
import '../../../models/timer_type_model.dart';

typedef SelectFocusState = CommonState<String, TomatlTimer>;

class SelectTimerStateNotifer extends StateNotifier<SelectFocusState> {
  SelectTimerStateNotifer() : super(SelectFocusState.initial());

  void focus(TomatlTimer selectedFocus) =>
      state = SelectFocusState.successful(selectedFocus);
}
