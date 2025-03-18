import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:fake_store/src/features/home/domain/repositories/products_repository.dart';

class GetProductsUseCase with UseCase<List<ProductResponse>, NoParams> {
  final ProductsRepository _repository;
  GetProductsUseCase(this._repository);

  @override
  Future<Either<Failure, List<ProductResponse>>> call(NoParams params) {
    return _repository.getProducts();
  }
}
