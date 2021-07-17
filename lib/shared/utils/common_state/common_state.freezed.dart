// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommonStateTearOff {
  const _$CommonStateTearOff();

  CommonStateInitial<F, S> initial<F, S>() {
    return CommonStateInitial<F, S>();
  }

  CommonStateLoading<F, S> loading<F, S>() {
    return CommonStateLoading<F, S>();
  }

  CommonStateFailed<F, S> failed<F, S>(F f) {
    return CommonStateFailed<F, S>(
      f,
    );
  }

  CommonStateSuccessful<F, S> successful<F, S>(S s) {
    return CommonStateSuccessful<F, S>(
      s,
    );
  }
}

/// @nodoc
const $CommonState = _$CommonStateTearOff();

/// @nodoc
mixin _$CommonState<F, S> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(F f) failed,
    required TResult Function(S s) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(F f)? failed,
    TResult Function(S s)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoading<F, S> value) loading,
    required TResult Function(CommonStateFailed<F, S> value) failed,
    required TResult Function(CommonStateSuccessful<F, S> value) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoading<F, S> value)? loading,
    TResult Function(CommonStateFailed<F, S> value)? failed,
    TResult Function(CommonStateSuccessful<F, S> value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<F, S, $Res> {
  factory $CommonStateCopyWith(
          CommonState<F, S> value, $Res Function(CommonState<F, S>) then) =
      _$CommonStateCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateCopyWith<F, S, $Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  final CommonState<F, S> _value;
  // ignore: unused_field
  final $Res Function(CommonState<F, S>) _then;
}

/// @nodoc
abstract class $CommonStateInitialCopyWith<F, S, $Res> {
  factory $CommonStateInitialCopyWith(CommonStateInitial<F, S> value,
          $Res Function(CommonStateInitial<F, S>) then) =
      _$CommonStateInitialCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$CommonStateInitialCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateInitialCopyWith<F, S, $Res> {
  _$CommonStateInitialCopyWithImpl(CommonStateInitial<F, S> _value,
      $Res Function(CommonStateInitial<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateInitial<F, S>));

  @override
  CommonStateInitial<F, S> get _value =>
      super._value as CommonStateInitial<F, S>;
}

/// @nodoc

class _$CommonStateInitial<F, S> implements CommonStateInitial<F, S> {
  const _$CommonStateInitial();

  @override
  String toString() {
    return 'CommonState<$F, $S>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommonStateInitial<F, S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(F f) failed,
    required TResult Function(S s) successful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(F f)? failed,
    TResult Function(S s)? successful,
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
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoading<F, S> value) loading,
    required TResult Function(CommonStateFailed<F, S> value) failed,
    required TResult Function(CommonStateSuccessful<F, S> value) successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoading<F, S> value)? loading,
    TResult Function(CommonStateFailed<F, S> value)? failed,
    TResult Function(CommonStateSuccessful<F, S> value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommonStateInitial<F, S> implements CommonState<F, S> {
  const factory CommonStateInitial() = _$CommonStateInitial<F, S>;
}

/// @nodoc
abstract class $CommonStateLoadingCopyWith<F, S, $Res> {
  factory $CommonStateLoadingCopyWith(CommonStateLoading<F, S> value,
          $Res Function(CommonStateLoading<F, S>) then) =
      _$CommonStateLoadingCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$CommonStateLoadingCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateLoadingCopyWith<F, S, $Res> {
  _$CommonStateLoadingCopyWithImpl(CommonStateLoading<F, S> _value,
      $Res Function(CommonStateLoading<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateLoading<F, S>));

  @override
  CommonStateLoading<F, S> get _value =>
      super._value as CommonStateLoading<F, S>;
}

/// @nodoc

class _$CommonStateLoading<F, S> implements CommonStateLoading<F, S> {
  const _$CommonStateLoading();

  @override
  String toString() {
    return 'CommonState<$F, $S>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CommonStateLoading<F, S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(F f) failed,
    required TResult Function(S s) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(F f)? failed,
    TResult Function(S s)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoading<F, S> value) loading,
    required TResult Function(CommonStateFailed<F, S> value) failed,
    required TResult Function(CommonStateSuccessful<F, S> value) successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoading<F, S> value)? loading,
    TResult Function(CommonStateFailed<F, S> value)? failed,
    TResult Function(CommonStateSuccessful<F, S> value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoading<F, S> implements CommonState<F, S> {
  const factory CommonStateLoading() = _$CommonStateLoading<F, S>;
}

/// @nodoc
abstract class $CommonStateFailedCopyWith<F, S, $Res> {
  factory $CommonStateFailedCopyWith(CommonStateFailed<F, S> value,
          $Res Function(CommonStateFailed<F, S>) then) =
      _$CommonStateFailedCopyWithImpl<F, S, $Res>;
  $Res call({F f});
}

/// @nodoc
class _$CommonStateFailedCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateFailedCopyWith<F, S, $Res> {
  _$CommonStateFailedCopyWithImpl(CommonStateFailed<F, S> _value,
      $Res Function(CommonStateFailed<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateFailed<F, S>));

  @override
  CommonStateFailed<F, S> get _value => super._value as CommonStateFailed<F, S>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(CommonStateFailed<F, S>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$CommonStateFailed<F, S> implements CommonStateFailed<F, S> {
  const _$CommonStateFailed(this.f);

  @override
  final F f;

  @override
  String toString() {
    return 'CommonState<$F, $S>.failed(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateFailed<F, S> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @JsonKey(ignore: true)
  @override
  $CommonStateFailedCopyWith<F, S, CommonStateFailed<F, S>> get copyWith =>
      _$CommonStateFailedCopyWithImpl<F, S, CommonStateFailed<F, S>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(F f) failed,
    required TResult Function(S s) successful,
  }) {
    return failed(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(F f)? failed,
    TResult Function(S s)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoading<F, S> value) loading,
    required TResult Function(CommonStateFailed<F, S> value) failed,
    required TResult Function(CommonStateSuccessful<F, S> value) successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoading<F, S> value)? loading,
    TResult Function(CommonStateFailed<F, S> value)? failed,
    TResult Function(CommonStateSuccessful<F, S> value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CommonStateFailed<F, S> implements CommonState<F, S> {
  const factory CommonStateFailed(F f) = _$CommonStateFailed<F, S>;

  F get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateFailedCopyWith<F, S, CommonStateFailed<F, S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateSuccessfulCopyWith<F, S, $Res> {
  factory $CommonStateSuccessfulCopyWith(CommonStateSuccessful<F, S> value,
          $Res Function(CommonStateSuccessful<F, S>) then) =
      _$CommonStateSuccessfulCopyWithImpl<F, S, $Res>;
  $Res call({S s});
}

/// @nodoc
class _$CommonStateSuccessfulCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res>
    implements $CommonStateSuccessfulCopyWith<F, S, $Res> {
  _$CommonStateSuccessfulCopyWithImpl(CommonStateSuccessful<F, S> _value,
      $Res Function(CommonStateSuccessful<F, S>) _then)
      : super(_value, (v) => _then(v as CommonStateSuccessful<F, S>));

  @override
  CommonStateSuccessful<F, S> get _value =>
      super._value as CommonStateSuccessful<F, S>;

  @override
  $Res call({
    Object? s = freezed,
  }) {
    return _then(CommonStateSuccessful<F, S>(
      s == freezed
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$CommonStateSuccessful<F, S> implements CommonStateSuccessful<F, S> {
  const _$CommonStateSuccessful(this.s);

  @override
  final S s;

  @override
  String toString() {
    return 'CommonState<$F, $S>.successful(s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateSuccessful<F, S> &&
            (identical(other.s, s) ||
                const DeepCollectionEquality().equals(other.s, s)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(s);

  @JsonKey(ignore: true)
  @override
  $CommonStateSuccessfulCopyWith<F, S, CommonStateSuccessful<F, S>>
      get copyWith => _$CommonStateSuccessfulCopyWithImpl<F, S,
          CommonStateSuccessful<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(F f) failed,
    required TResult Function(S s) successful,
  }) {
    return successful(s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(F f)? failed,
    TResult Function(S s)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoading<F, S> value) loading,
    required TResult Function(CommonStateFailed<F, S> value) failed,
    required TResult Function(CommonStateSuccessful<F, S> value) successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoading<F, S> value)? loading,
    TResult Function(CommonStateFailed<F, S> value)? failed,
    TResult Function(CommonStateSuccessful<F, S> value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CommonStateSuccessful<F, S> implements CommonState<F, S> {
  const factory CommonStateSuccessful(S s) = _$CommonStateSuccessful<F, S>;

  S get s => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateSuccessfulCopyWith<F, S, CommonStateSuccessful<F, S>>
      get copyWith => throw _privateConstructorUsedError;
}
