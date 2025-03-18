import 'package:fake_store/src/features/cart/data/model/cart_response.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';

double cartTotalPrice(
    List<ProductResponse> products, List<CartProduct> cartProducts) {
  double totalPrice = 0;
  for (var cartProduct in cartProducts) {
    var product =
        products.firstWhere((element) => element.id == cartProduct.productId);
    totalPrice += product.price * cartProduct.quantity;
  }
  return totalPrice;
}
