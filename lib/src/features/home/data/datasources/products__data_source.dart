import 'package:fake_store/src/features/home/data/client/products_client.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';

class ProductsDataSource {
  final ProductsClient _client;

  ProductsDataSource(this._client);

  Future<List<ProductResponse>> getProducts() async {
    return await _client.getProducts();
  }
}
