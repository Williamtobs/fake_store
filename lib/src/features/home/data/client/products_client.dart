import 'package:dio/dio.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:retrofit/retrofit.dart';

part 'products_client.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class ProductsClient {
  factory ProductsClient(Dio dio, {String baseUrl}) = _ProductsClient;

  @GET('products')
  Future<List<ProductResponse>> getProducts();
}
