part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial({
    @Default(ViewState.idle) ViewState viewState,
    @Default('') String errorMessage,
    UserResponse? userInfo,
  }) = _Initial;
}
