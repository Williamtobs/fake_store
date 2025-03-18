import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/features/cart/data/model/cart_response.dart';
import 'package:fake_store/src/features/cart/domain/usecases/add_to_cart_use_case.dart';
import 'package:fake_store/src/features/cart/domain/usecases/delete_cart_use_case.dart';
import 'package:fake_store/src/features/cart/domain/usecases/get_cart_use_case.dart';
import 'package:fake_store/src/features/cart/domain/usecases/update_carts_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(
    this._getCartUseCase,
    this._updateCartsUseCase,
    this._addToCartUseCase,
    this._deleteCartUseCase,
  ) : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_UpdateCart>(_onUpdateCart);
    on<_AddToCart>(_onAddToCart);
    on<_DeleteCart>(_onDeleteCart);
  }

  final GetCartUseCase _getCartUseCase;
  final UpdateCartsUseCase _updateCartsUseCase;
  final AddToCartUseCase _addToCartUseCase;
  final DeleteCartUseCase _deleteCartUseCase;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CartState> emit,
  ) async {
    if (event.isFirstTime) {
      emit(state.copyWith(viewState: ViewState.processing));
    }
    final result = await _getCartUseCase(1);
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
        emit(
          state.copyWith(
            viewState: ViewState.idle,
            cart: data,
          ),
        );
      },
    );
  }

  FutureOr<void> _onUpdateCart(
    _UpdateCart event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.processing));
    final result = await _updateCartsUseCase(event.cartResponse);
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
        emit(
          state.copyWith(
            viewState: ViewState.success,
          ),
        );
      },
    );

    add(const CartEvent.started(false));
  }

  FutureOr<void> _onAddToCart(
    _AddToCart event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.processing));
    final result = await _addToCartUseCase(event.cartResponse);
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
        emit(
          state.copyWith(
            viewState: ViewState.success,
          ),
        );
      },
    );

    add(const CartEvent.started(false));
  }

  FutureOr<void> _onDeleteCart(
    _DeleteCart event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(deleteViewState: ViewState.processing));
    final result = await _deleteCartUseCase(event.id);
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            deleteViewState: ViewState.error,
            errorMessage: failure.message ?? 'Something went wrong',
          ),
        );
      },
      (data) {
        emit(
          state.copyWith(
            deleteViewState: ViewState.success,
          ),
        );
      },
    );
    emit(state.copyWith(deleteViewState: ViewState.idle));
    add(const CartEvent.started(false));
  }
}
