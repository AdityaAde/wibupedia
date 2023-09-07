import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_cubit.freezed.dart';
part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  factory TestCubit.create() => TestCubit();

  TestCubit() : super(const TestState.initial());

  final String _name = 'test';
  String get name => _name;

  void increment() => emit(const TestState.increment());
  void decrement() => emit(const TestState.decrement());
}
