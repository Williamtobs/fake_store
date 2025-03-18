part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial({
    @Default(ViewState.idle) ViewState viewState,
    @Default('') String errorMessage,
    @Default([]) List<ProductResponse> products,
    @Default([]) List<ProductResponse> wishListItems,
  }) = _Initial;
}
