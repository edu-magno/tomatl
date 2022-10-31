import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.freezed.dart';

@freezed
abstract class TimerState with _$TimerState {
  const factory TimerState.initial() = TimerStateInitial;
  const factory TimerState.paused() = TimerStatePaused;
  const factory TimerState.startInterval() = TimerStateStartInterval;
  const factory TimerState.startFocus() = TimerStateStartFocus;
  const factory TimerState.tick() = TimerStateTick;
  const factory TimerState.finishedTick() = TimerStateFinishedTick;
  const factory TimerState.restart() = TimerStateRestart;
  const factory TimerState.select() = TimerStateSelect;
}
