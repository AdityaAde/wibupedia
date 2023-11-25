part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.signup(User? user) = _Signup;
  const factory AuthenticationState.auth(User? user) = _Auth;
  const factory AuthenticationState.logout() = _Logout;
  const factory AuthenticationState.error(String err) = _Error;
}
