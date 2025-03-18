import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/cart/domain/repositories/cart_repository.dart';

class AddToCartUseCase with UseCase<void, dynamic> {
  final CartRepository _cartRepository;
  AddToCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, void>> call(dynamic params) {
    return _cartRepository.addToCart(params);
  }
}
