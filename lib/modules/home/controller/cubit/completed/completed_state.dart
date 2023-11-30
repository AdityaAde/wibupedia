part of 'completed_cubit.dart';

@freezed
class CompletedState with _$CompletedState {
  const factory CompletedState.initial() = _Initial;
  const factory CompletedState.loading() = _Loading;
  const factory CompletedState.success(CompletedModels anime) = _Success;
  const factory CompletedState.error(String err) = _Error;
}
