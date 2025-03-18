import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fake_store/src/core/enums/view_state.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:fake_store/src/features/home/domain/usecases/get_products_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(
    this._getProductsUseCase,
  ) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final GetProductsUseCase _getProductsUseCase;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ProductsState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.processing));
    final result = await _getProductsUseCase(NoParams());
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
            products: data,
          ),
        );
      },
    );
  }
}
