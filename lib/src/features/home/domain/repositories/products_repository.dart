import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';

abstract class ProductsRepository {
  Future<Either<Failure, List<ProductResponse>>> getProducts();
}
