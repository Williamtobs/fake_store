part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login({
    required UserInfo userInfo,
  }) = _Login;

  const factory AuthenticationEvent.getUser() = _GetUser;

  const factory AuthenticationEvent.logout() = _Logout;
}
