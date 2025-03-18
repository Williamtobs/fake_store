import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/extensions/repositories_extension.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/features/cart/data/datasources/cart_data_source.dart';
import 'package:fake_store/src/features/cart/data/model/cart_response.dart';
import 'package:fake_store/src/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartDataSource _cartDataSource;
  CartRepositoryImpl(this._cartDataSource);

  @override
  Future<Either<Failure, CartsResponse>> getCarts(int id) {
    return _cartDataSource.getCarts(id).makeRequest();
  }

  @override
  Future<Either<Failure, void>> updateCarts(int id, dynamic cartsResponse) {
    return _cartDataSource.updateCarts(id, cartsResponse).makeRequest();
  }

  @override
  Future<Either<Failure, void>> addToCart(dynamic cartsResponse) {
    return _cartDataSource.addToCart(cartsResponse).makeRequest();
  }

  @override
  Future<Either<Failure, void>> deleteCart(int id) {
    return _cartDataSource.deleteCart(id).makeRequest();
  }
}
