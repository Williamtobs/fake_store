import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/features/cart/data/model/cart_response.dart';

abstract class CartRepository {
  Future<Either<Failure, CartsResponse>> getCarts(int id);

  Future<Either<Failure, void>> updateCarts(int id, dynamic cartsResponse);

  Future<Either<Failure, void>> addToCart(dynamic cartsResponse);

  Future<Either<Failure, void>> deleteCart(int id);
}
