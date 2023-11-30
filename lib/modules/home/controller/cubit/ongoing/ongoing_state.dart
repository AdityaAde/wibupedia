part of 'ongoing_cubit.dart';

@freezed
class OngoingState with _$OngoingState {
  const factory OngoingState.initial() = _Initial;
  const factory OngoingState.loading() = _Loading;
  const factory OngoingState.success(OngoingModels anime) = _Success;
  const factory OngoingState.error(String err) = _Error;
}
