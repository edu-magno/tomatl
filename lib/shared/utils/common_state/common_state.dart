import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_state.freezed.dart';

/// HOW TO USE
///
/// typedef ExampleState = CommonState<ExampleFailed, ExampleSuccessful>;
///
@freezed
abstract class CommonState<F, S> with _$CommonState<F, S> {
  const factory CommonState.initial() = CommonStateInitial;
  const factory CommonState.loading() = CommonStateLoading;
  const factory CommonState.failed(F f) = CommonStateFailed;
  const factory CommonState.successful(S s) = CommonStateSuccessful;
}
