// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  TimerStateInitial initial() {
    return const TimerStateInitial();
  }

  TimerStatePaused paused() {
    return const TimerStatePaused();
  }

  TimerStateStartInterval startInterval() {
    return const TimerStateStartInterval();
  }

  TimerStateStartFocus startFocus() {
    return const TimerStateStartFocus();
  }

  TimerStateTick tick() {
    return const TimerStateTick();
  }

  TimerStateFinishedTick finishedTick() {
    return const TimerStateFinishedTick();
  }

  TimerStateRestart restart() {
    return const TimerStateRestart();
  }

  TimerStateSelect select() {
    return const TimerStateSelect();
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;
}

/// @nodoc
abstract class $TimerStateInitialCopyWith<$Res> {
  factory $TimerStateInitialCopyWith(
          TimerStateInitial value, $Res Function(TimerStateInitial) then) =
      _$TimerStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateInitialCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateInitialCopyWith<$Res> {
  _$TimerStateInitialCopyWithImpl(
      TimerStateInitial _value, $Res Function(TimerStateInitial) _then)
      : super(_value, (v) => _then(v as TimerStateInitial));

  @override
  TimerStateInitial get _value => super._value as TimerStateInitial;
}

/// @nodoc

class _$TimerStateInitial implements TimerStateInitial {
  const _$TimerStateInitial();

  @override
  String toString() {
    return 'TimerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TimerStateInitial implements TimerState {
  const factory TimerStateInitial() = _$TimerStateInitial;
}

/// @nodoc
abstract class $TimerStatePausedCopyWith<$Res> {
  factory $TimerStatePausedCopyWith(
          TimerStatePaused value, $Res Function(TimerStatePaused) then) =
      _$TimerStatePausedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStatePausedCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStatePausedCopyWith<$Res> {
  _$TimerStatePausedCopyWithImpl(
      TimerStatePaused _value, $Res Function(TimerStatePaused) _then)
      : super(_value, (v) => _then(v as TimerStatePaused));

  @override
  TimerStatePaused get _value => super._value as TimerStatePaused;
}

/// @nodoc

class _$TimerStatePaused implements TimerStatePaused {
  const _$TimerStatePaused();

  @override
  String toString() {
    return 'TimerState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStatePaused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class TimerStatePaused implements TimerState {
  const factory TimerStatePaused() = _$TimerStatePaused;
}

/// @nodoc
abstract class $TimerStateStartIntervalCopyWith<$Res> {
  factory $TimerStateStartIntervalCopyWith(TimerStateStartInterval value,
          $Res Function(TimerStateStartInterval) then) =
      _$TimerStateStartIntervalCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateStartIntervalCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateStartIntervalCopyWith<$Res> {
  _$TimerStateStartIntervalCopyWithImpl(TimerStateStartInterval _value,
      $Res Function(TimerStateStartInterval) _then)
      : super(_value, (v) => _then(v as TimerStateStartInterval));

  @override
  TimerStateStartInterval get _value => super._value as TimerStateStartInterval;
}

/// @nodoc

class _$TimerStateStartInterval implements TimerStateStartInterval {
  const _$TimerStateStartInterval();

  @override
  String toString() {
    return 'TimerState.startInterval()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateStartInterval);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return startInterval();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (startInterval != null) {
      return startInterval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return startInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (startInterval != null) {
      return startInterval(this);
    }
    return orElse();
  }
}

abstract class TimerStateStartInterval implements TimerState {
  const factory TimerStateStartInterval() = _$TimerStateStartInterval;
}

/// @nodoc
abstract class $TimerStateStartFocusCopyWith<$Res> {
  factory $TimerStateStartFocusCopyWith(TimerStateStartFocus value,
          $Res Function(TimerStateStartFocus) then) =
      _$TimerStateStartFocusCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateStartFocusCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateStartFocusCopyWith<$Res> {
  _$TimerStateStartFocusCopyWithImpl(
      TimerStateStartFocus _value, $Res Function(TimerStateStartFocus) _then)
      : super(_value, (v) => _then(v as TimerStateStartFocus));

  @override
  TimerStateStartFocus get _value => super._value as TimerStateStartFocus;
}

/// @nodoc

class _$TimerStateStartFocus implements TimerStateStartFocus {
  const _$TimerStateStartFocus();

  @override
  String toString() {
    return 'TimerState.startFocus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateStartFocus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return startFocus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (startFocus != null) {
      return startFocus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return startFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (startFocus != null) {
      return startFocus(this);
    }
    return orElse();
  }
}

abstract class TimerStateStartFocus implements TimerState {
  const factory TimerStateStartFocus() = _$TimerStateStartFocus;
}

/// @nodoc
abstract class $TimerStateTickCopyWith<$Res> {
  factory $TimerStateTickCopyWith(
          TimerStateTick value, $Res Function(TimerStateTick) then) =
      _$TimerStateTickCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateTickCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateTickCopyWith<$Res> {
  _$TimerStateTickCopyWithImpl(
      TimerStateTick _value, $Res Function(TimerStateTick) _then)
      : super(_value, (v) => _then(v as TimerStateTick));

  @override
  TimerStateTick get _value => super._value as TimerStateTick;
}

/// @nodoc

class _$TimerStateTick implements TimerStateTick {
  const _$TimerStateTick();

  @override
  String toString() {
    return 'TimerState.tick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateTick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return tick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class TimerStateTick implements TimerState {
  const factory TimerStateTick() = _$TimerStateTick;
}

/// @nodoc
abstract class $TimerStateFinishedTickCopyWith<$Res> {
  factory $TimerStateFinishedTickCopyWith(TimerStateFinishedTick value,
          $Res Function(TimerStateFinishedTick) then) =
      _$TimerStateFinishedTickCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateFinishedTickCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateFinishedTickCopyWith<$Res> {
  _$TimerStateFinishedTickCopyWithImpl(TimerStateFinishedTick _value,
      $Res Function(TimerStateFinishedTick) _then)
      : super(_value, (v) => _then(v as TimerStateFinishedTick));

  @override
  TimerStateFinishedTick get _value => super._value as TimerStateFinishedTick;
}

/// @nodoc

class _$TimerStateFinishedTick implements TimerStateFinishedTick {
  const _$TimerStateFinishedTick();

  @override
  String toString() {
    return 'TimerState.finishedTick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateFinishedTick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return finishedTick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (finishedTick != null) {
      return finishedTick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return finishedTick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (finishedTick != null) {
      return finishedTick(this);
    }
    return orElse();
  }
}

abstract class TimerStateFinishedTick implements TimerState {
  const factory TimerStateFinishedTick() = _$TimerStateFinishedTick;
}

/// @nodoc
abstract class $TimerStateRestartCopyWith<$Res> {
  factory $TimerStateRestartCopyWith(
          TimerStateRestart value, $Res Function(TimerStateRestart) then) =
      _$TimerStateRestartCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateRestartCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateRestartCopyWith<$Res> {
  _$TimerStateRestartCopyWithImpl(
      TimerStateRestart _value, $Res Function(TimerStateRestart) _then)
      : super(_value, (v) => _then(v as TimerStateRestart));

  @override
  TimerStateRestart get _value => super._value as TimerStateRestart;
}

/// @nodoc

class _$TimerStateRestart implements TimerStateRestart {
  const _$TimerStateRestart();

  @override
  String toString() {
    return 'TimerState.restart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateRestart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class TimerStateRestart implements TimerState {
  const factory TimerStateRestart() = _$TimerStateRestart;
}

/// @nodoc
abstract class $TimerStateSelectCopyWith<$Res> {
  factory $TimerStateSelectCopyWith(
          TimerStateSelect value, $Res Function(TimerStateSelect) then) =
      _$TimerStateSelectCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimerStateSelectCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateSelectCopyWith<$Res> {
  _$TimerStateSelectCopyWithImpl(
      TimerStateSelect _value, $Res Function(TimerStateSelect) _then)
      : super(_value, (v) => _then(v as TimerStateSelect));

  @override
  TimerStateSelect get _value => super._value as TimerStateSelect;
}

/// @nodoc

class _$TimerStateSelect implements TimerStateSelect {
  const _$TimerStateSelect();

  @override
  String toString() {
    return 'TimerState.select()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateSelect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() paused,
    required TResult Function() startInterval,
    required TResult Function() startFocus,
    required TResult Function() tick,
    required TResult Function() finishedTick,
    required TResult Function() restart,
    required TResult Function() select,
  }) {
    return select();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? paused,
    TResult Function()? startInterval,
    TResult Function()? startFocus,
    TResult Function()? tick,
    TResult Function()? finishedTick,
    TResult Function()? restart,
    TResult Function()? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStateInitial value) initial,
    required TResult Function(TimerStatePaused value) paused,
    required TResult Function(TimerStateStartInterval value) startInterval,
    required TResult Function(TimerStateStartFocus value) startFocus,
    required TResult Function(TimerStateTick value) tick,
    required TResult Function(TimerStateFinishedTick value) finishedTick,
    required TResult Function(TimerStateRestart value) restart,
    required TResult Function(TimerStateSelect value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStateInitial value)? initial,
    TResult Function(TimerStatePaused value)? paused,
    TResult Function(TimerStateStartInterval value)? startInterval,
    TResult Function(TimerStateStartFocus value)? startFocus,
    TResult Function(TimerStateTick value)? tick,
    TResult Function(TimerStateFinishedTick value)? finishedTick,
    TResult Function(TimerStateRestart value)? restart,
    TResult Function(TimerStateSelect value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class TimerStateSelect implements TimerState {
  const factory TimerStateSelect() = _$TimerStateSelect;
}
