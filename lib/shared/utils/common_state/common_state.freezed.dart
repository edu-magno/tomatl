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

  CommonStateInitial<Failed, Success> initial<Failed, Success>() {
    return CommonStateInitial<Failed, Success>();
  }

  CommonStateLoading<Failed, Success> loading<Failed, Success>() {
    return CommonStateLoading<Failed, Success>();
  }

  CommonStateFailed<Failed, Success> failed<Failed, Success>(Failed fail) {
    return CommonStateFailed<Failed, Success>(
      fail,
    );
  }

  CommonStateSuccessful<Failed, Success> successful<Failed, Success>(
      Success success, bool booleanOption) {
    return CommonStateSuccessful<Failed, Success>(
      success,
      booleanOption,
    );
  }
}

/// @nodoc
const $CommonState = _$CommonStateTearOff();

/// @nodoc
mixin _$CommonState<Failed, Success> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failed fail) failed,
    required TResult Function(Success success, bool booleanOption) successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failed fail)? failed,
    TResult Function(Success success, bool booleanOption)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<Failed, Success> value)
        initial,
    required TResult Function(CommonStateLoading<Failed, Success> value)
        loading,
    required TResult Function(CommonStateFailed<Failed, Success> value) failed,
    required TResult Function(CommonStateSuccessful<Failed, Success> value)
        successful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<Failed, Success> value)? initial,
    TResult Function(CommonStateLoading<Failed, Success> value)? loading,
    TResult Function(CommonStateFailed<Failed, Success> value)? failed,
    TResult Function(CommonStateSuccessful<Failed, Success> value)? successful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<Failed, Success, $Res> {
  factory $CommonStateCopyWith(CommonState<Failed, Success> value,
          $Res Function(CommonState<Failed, Success>) then) =
      _$CommonStateCopyWithImpl<Failed, Success, $Res>;
}

/// @nodoc
class _$CommonStateCopyWithImpl<Failed, Success, $Res>
    implements $CommonStateCopyWith<Failed, Success, $Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  final CommonState<Failed, Success> _value;
  // ignore: unused_field
  final $Res Function(CommonState<Failed, Success>) _then;
}

/// @nodoc
abstract class $CommonStateInitialCopyWith<Failed, Success, $Res> {
  factory $CommonStateInitialCopyWith(CommonStateInitial<Failed, Success> value,
          $Res Function(CommonStateInitial<Failed, Success>) then) =
      _$CommonStateInitialCopyWithImpl<Failed, Success, $Res>;
}

/// @nodoc
class _$CommonStateInitialCopyWithImpl<Failed, Success, $Res>
    extends _$CommonStateCopyWithImpl<Failed, Success, $Res>
    implements $CommonStateInitialCopyWith<Failed, Success, $Res> {
  _$CommonStateInitialCopyWithImpl(CommonStateInitial<Failed, Success> _value,
      $Res Function(CommonStateInitial<Failed, Success>) _then)
      : super(_value, (v) => _then(v as CommonStateInitial<Failed, Success>));

  @override
  CommonStateInitial<Failed, Success> get _value =>
      super._value as CommonStateInitial<Failed, Success>;
}

/// @nodoc

class _$CommonStateInitial<Failed, Success>
    implements CommonStateInitial<Failed, Success> {
  const _$CommonStateInitial();

  @override
  String toString() {
    return 'CommonState<$Failed, $Success>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateInitial<Failed, Success>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failed fail) failed,
    required TResult Function(Success success, bool booleanOption) successful,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failed fail)? failed,
    TResult Function(Success success, bool booleanOption)? successful,
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
    required TResult Function(CommonStateInitial<Failed, Success> value)
        initial,
    required TResult Function(CommonStateLoading<Failed, Success> value)
        loading,
    required TResult Function(CommonStateFailed<Failed, Success> value) failed,
    required TResult Function(CommonStateSuccessful<Failed, Success> value)
        successful,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<Failed, Success> value)? initial,
    TResult Function(CommonStateLoading<Failed, Success> value)? loading,
    TResult Function(CommonStateFailed<Failed, Success> value)? failed,
    TResult Function(CommonStateSuccessful<Failed, Success> value)? successful,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommonStateInitial<Failed, Success>
    implements CommonState<Failed, Success> {
  const factory CommonStateInitial() = _$CommonStateInitial<Failed, Success>;
}

/// @nodoc
abstract class $CommonStateLoadingCopyWith<Failed, Success, $Res> {
  factory $CommonStateLoadingCopyWith(CommonStateLoading<Failed, Success> value,
          $Res Function(CommonStateLoading<Failed, Success>) then) =
      _$CommonStateLoadingCopyWithImpl<Failed, Success, $Res>;
}

/// @nodoc
class _$CommonStateLoadingCopyWithImpl<Failed, Success, $Res>
    extends _$CommonStateCopyWithImpl<Failed, Success, $Res>
    implements $CommonStateLoadingCopyWith<Failed, Success, $Res> {
  _$CommonStateLoadingCopyWithImpl(CommonStateLoading<Failed, Success> _value,
      $Res Function(CommonStateLoading<Failed, Success>) _then)
      : super(_value, (v) => _then(v as CommonStateLoading<Failed, Success>));

  @override
  CommonStateLoading<Failed, Success> get _value =>
      super._value as CommonStateLoading<Failed, Success>;
}

/// @nodoc

class _$CommonStateLoading<Failed, Success>
    implements CommonStateLoading<Failed, Success> {
  const _$CommonStateLoading();

  @override
  String toString() {
    return 'CommonState<$Failed, $Success>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateLoading<Failed, Success>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failed fail) failed,
    required TResult Function(Success success, bool booleanOption) successful,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failed fail)? failed,
    TResult Function(Success success, bool booleanOption)? successful,
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
    required TResult Function(CommonStateInitial<Failed, Success> value)
        initial,
    required TResult Function(CommonStateLoading<Failed, Success> value)
        loading,
    required TResult Function(CommonStateFailed<Failed, Success> value) failed,
    required TResult Function(CommonStateSuccessful<Failed, Success> value)
        successful,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<Failed, Success> value)? initial,
    TResult Function(CommonStateLoading<Failed, Success> value)? loading,
    TResult Function(CommonStateFailed<Failed, Success> value)? failed,
    TResult Function(CommonStateSuccessful<Failed, Success> value)? successful,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoading<Failed, Success>
    implements CommonState<Failed, Success> {
  const factory CommonStateLoading() = _$CommonStateLoading<Failed, Success>;
}

/// @nodoc
abstract class $CommonStateFailedCopyWith<Failed, Success, $Res> {
  factory $CommonStateFailedCopyWith(CommonStateFailed<Failed, Success> value,
          $Res Function(CommonStateFailed<Failed, Success>) then) =
      _$CommonStateFailedCopyWithImpl<Failed, Success, $Res>;
  $Res call({Failed fail});
}

/// @nodoc
class _$CommonStateFailedCopyWithImpl<Failed, Success, $Res>
    extends _$CommonStateCopyWithImpl<Failed, Success, $Res>
    implements $CommonStateFailedCopyWith<Failed, Success, $Res> {
  _$CommonStateFailedCopyWithImpl(CommonStateFailed<Failed, Success> _value,
      $Res Function(CommonStateFailed<Failed, Success>) _then)
      : super(_value, (v) => _then(v as CommonStateFailed<Failed, Success>));

  @override
  CommonStateFailed<Failed, Success> get _value =>
      super._value as CommonStateFailed<Failed, Success>;

  @override
  $Res call({
    Object? fail = freezed,
  }) {
    return _then(CommonStateFailed<Failed, Success>(
      fail == freezed
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as Failed,
    ));
  }
}

/// @nodoc

class _$CommonStateFailed<Failed, Success>
    implements CommonStateFailed<Failed, Success> {
  const _$CommonStateFailed(this.fail);

  @override
  final Failed fail;

  @override
  String toString() {
    return 'CommonState<$Failed, $Success>.failed(fail: $fail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateFailed<Failed, Success> &&
            (identical(other.fail, fail) ||
                const DeepCollectionEquality().equals(other.fail, fail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fail);

  @JsonKey(ignore: true)
  @override
  $CommonStateFailedCopyWith<Failed, Success,
          CommonStateFailed<Failed, Success>>
      get copyWith => _$CommonStateFailedCopyWithImpl<Failed, Success,
          CommonStateFailed<Failed, Success>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failed fail) failed,
    required TResult Function(Success success, bool booleanOption) successful,
  }) {
    return failed(fail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failed fail)? failed,
    TResult Function(Success success, bool booleanOption)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(fail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<Failed, Success> value)
        initial,
    required TResult Function(CommonStateLoading<Failed, Success> value)
        loading,
    required TResult Function(CommonStateFailed<Failed, Success> value) failed,
    required TResult Function(CommonStateSuccessful<Failed, Success> value)
        successful,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<Failed, Success> value)? initial,
    TResult Function(CommonStateLoading<Failed, Success> value)? loading,
    TResult Function(CommonStateFailed<Failed, Success> value)? failed,
    TResult Function(CommonStateSuccessful<Failed, Success> value)? successful,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CommonStateFailed<Failed, Success>
    implements CommonState<Failed, Success> {
  const factory CommonStateFailed(Failed fail) =
      _$CommonStateFailed<Failed, Success>;

  Failed get fail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateFailedCopyWith<Failed, Success,
          CommonStateFailed<Failed, Success>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateSuccessfulCopyWith<Failed, Success, $Res> {
  factory $CommonStateSuccessfulCopyWith(
          CommonStateSuccessful<Failed, Success> value,
          $Res Function(CommonStateSuccessful<Failed, Success>) then) =
      _$CommonStateSuccessfulCopyWithImpl<Failed, Success, $Res>;
  $Res call({Success success, bool booleanOption});
}

/// @nodoc
class _$CommonStateSuccessfulCopyWithImpl<Failed, Success, $Res>
    extends _$CommonStateCopyWithImpl<Failed, Success, $Res>
    implements $CommonStateSuccessfulCopyWith<Failed, Success, $Res> {
  _$CommonStateSuccessfulCopyWithImpl(
      CommonStateSuccessful<Failed, Success> _value,
      $Res Function(CommonStateSuccessful<Failed, Success>) _then)
      : super(
            _value, (v) => _then(v as CommonStateSuccessful<Failed, Success>));

  @override
  CommonStateSuccessful<Failed, Success> get _value =>
      super._value as CommonStateSuccessful<Failed, Success>;

  @override
  $Res call({
    Object? success = freezed,
    Object? booleanOption = freezed,
  }) {
    return _then(CommonStateSuccessful<Failed, Success>(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Success,
      booleanOption == freezed
          ? _value.booleanOption
          : booleanOption // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommonStateSuccessful<Failed, Success>
    implements CommonStateSuccessful<Failed, Success> {
  const _$CommonStateSuccessful(this.success, this.booleanOption);

  @override
  final Success success;
  @override
  final bool booleanOption;

  @override
  String toString() {
    return 'CommonState<$Failed, $Success>.successful(success: $success, booleanOption: $booleanOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommonStateSuccessful<Failed, Success> &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.booleanOption, booleanOption) ||
                const DeepCollectionEquality()
                    .equals(other.booleanOption, booleanOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(booleanOption);

  @JsonKey(ignore: true)
  @override
  $CommonStateSuccessfulCopyWith<Failed, Success,
          CommonStateSuccessful<Failed, Success>>
      get copyWith => _$CommonStateSuccessfulCopyWithImpl<Failed, Success,
          CommonStateSuccessful<Failed, Success>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failed fail) failed,
    required TResult Function(Success success, bool booleanOption) successful,
  }) {
    return successful(success, booleanOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failed fail)? failed,
    TResult Function(Success success, bool booleanOption)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(success, booleanOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<Failed, Success> value)
        initial,
    required TResult Function(CommonStateLoading<Failed, Success> value)
        loading,
    required TResult Function(CommonStateFailed<Failed, Success> value) failed,
    required TResult Function(CommonStateSuccessful<Failed, Success> value)
        successful,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<Failed, Success> value)? initial,
    TResult Function(CommonStateLoading<Failed, Success> value)? loading,
    TResult Function(CommonStateFailed<Failed, Success> value)? failed,
    TResult Function(CommonStateSuccessful<Failed, Success> value)? successful,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CommonStateSuccessful<Failed, Success>
    implements CommonState<Failed, Success> {
  const factory CommonStateSuccessful(Success success, bool booleanOption) =
      _$CommonStateSuccessful<Failed, Success>;

  Success get success => throw _privateConstructorUsedError;
  bool get booleanOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonStateSuccessfulCopyWith<Failed, Success,
          CommonStateSuccessful<Failed, Success>>
      get copyWith => throw _privateConstructorUsedError;
}
