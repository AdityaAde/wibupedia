part of 'test_cubit.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.initial() = _Initial;
  const factory TestState.increment() = _Increment;
  const factory TestState.decrement() = _Decrement;
}
