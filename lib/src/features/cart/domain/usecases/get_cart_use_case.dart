import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/cart/data/model/cart_response.dart';
import 'package:fake_store/src/features/cart/domain/repositories/cart_repository.dart';

class GetCartUseCase with UseCase<CartsResponse, int> {
  final CartRepository _cartRepository;
  GetCartUseCase(this._cartRepository);

  @override
  Future<Either<Failure, CartsResponse>> call(int params) {
    return _cartRepository.getCarts(params);
  }
}
