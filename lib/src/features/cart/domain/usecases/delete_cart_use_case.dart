import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/cart/domain/repositories/cart_repository.dart';

class DeleteCartUseCase with UseCase<void, int> {
  final CartRepository _cartRepository;
  DeleteCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, void>> call(int params) {
    return _cartRepository.deleteCart(params);
  }
}
