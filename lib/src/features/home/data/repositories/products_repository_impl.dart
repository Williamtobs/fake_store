import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/extensions/repositories_extension.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/features/home/data/datasources/products__data_source.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:fake_store/src/features/home/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsDataSource _dataSource;
  ProductsRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<ProductResponse>>> getProducts() {
    return _dataSource.getProducts().makeRequest();
  }
}
