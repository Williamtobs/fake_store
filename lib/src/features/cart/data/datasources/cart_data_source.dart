import 'package:fake_store/src/features/cart/data/client/cart_client.dart';
import 'package:fake_store/src/features/cart/data/model/cart_response.dart';

class CartDataSource {
  final CartClient _cartClient;
  CartDataSource(this._cartClient);

  Future<CartsResponse> getCarts(int id) async {
    return _cartClient.getCarts(id);
  }

  Future<void> updateCarts(int id, dynamic cartsResponse) async {
    return _cartClient.updateCarts(id, cartsResponse);
  }

  Future<void> addToCart(dynamic cartsResponse) async {
    return _cartClient.addToCart(cartsResponse);
  }

  Future<void> deleteCart(int id) async {
    return _cartClient.deleteCart(id);
  }
}
