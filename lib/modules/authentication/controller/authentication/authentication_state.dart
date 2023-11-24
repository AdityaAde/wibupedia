part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.google(User? user) = _GoogleAuth;
  const factory AuthenticationState.error(String err) = _Error;
}
