part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    @Default(ViewState.idle) ViewState viewState,
    @Default(ViewState.idle) ViewState deleteViewState,
    @Default('') String errorMessage,
    CartsResponse? cart,
  }) = _Initial;
}
