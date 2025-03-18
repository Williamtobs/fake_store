part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started(bool isFirstTime) = _Started;
  const factory CartEvent.updateCart(dynamic cartResponse) = _UpdateCart;
  const factory CartEvent.addToCart(dynamic cartResponse) = _AddToCart;
  const factory CartEvent.deleteCart(int id) = _DeleteCart;
}
