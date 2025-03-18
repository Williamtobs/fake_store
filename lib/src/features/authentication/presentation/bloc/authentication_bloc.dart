import 'dart:async';

import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/di/locator.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/domain/usecases/get_user_use_case.dart';
import 'package:fake_store/src/features/authentication/domain/usecases/login_use_case.dart';
import 'package:fake_store/src/services/user_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_response.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this._loginUseCase,
    this._getUserUseCase,
  ) : super(const _Initial()) {
    on<_Login>(_onLogin);
    on<_Logout>(_onLogout);
    on<_GetUser>(_onGetUser);
  }

  final LoginUseCase _loginUseCase;
  final GetUserUseCase _getUserUseCase;

  FutureOr<void> _onLogin(
    _Login event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.processing));
    final result = await _loginUseCase(event.userInfo);
    final userStorageService = locator<UserStorageService>();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            viewState: ViewState.error,
            errorMessage: failure.message ?? 'Something went wrong',
          ),
        );
      },
      (data) {
        debugPrint('Token: $data');
        userStorageService.saveToken(data['token']);
      },
    );
    if (result.isRight) {
      add(const _GetUser());
    }
  }

  FutureOr<void> _onLogout(
    _Logout event,
    Emitter<AuthenticationState> emit,
  ) async {
    final userStorageService = locator<UserStorageService>();
    userStorageService.clearToken();
    userStorageService.deleteUser();
    userStorageService.clearAll();
    emit(const _Initial());
  }

  FutureOr<void> _onGetUser(
    _GetUser event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.processing));
    final result = await _getUserUseCase(1);
    final userStorageService = locator<UserStorageService>();
    if (result.isRight) {}
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            viewState: ViewState.error,
            errorMessage: failure.message!,
          ),
        );
      },
      (data) {
        userStorageService.saveUser(data);
        emit(state.copyWith(viewState: ViewState.success, userInfo: data));
      },
    );
  }
}
