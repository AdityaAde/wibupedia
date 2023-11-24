import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../component/injector.dart';
import '../../../../repositories/repositories.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final AuthenticationRepository _authenticationRepository = getIt.get();

  factory AuthenticationCubit.create() => AuthenticationCubit();
  AuthenticationCubit() : super(const AuthenticationState.initial());

  void googleAuth() async {
    emit(const AuthenticationState.loading());
    final result = await _authenticationRepository.googleAuth();
    result.fold(
      (l) => emit(AuthenticationState.error(l.toString())),
      (r) => emit(AuthenticationState.google(r)),
    );
  }
}
