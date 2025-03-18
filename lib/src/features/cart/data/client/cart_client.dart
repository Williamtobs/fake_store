import 'package:dio/dio.dart';
import 'package:fake_store/src/features/cart/data/model/cart_response.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_client.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class CartClient {
  factory CartClient(Dio dio, {String baseUrl}) = _CartClient;

  @GET('carts/{id}')
  Future<CartsResponse> getCarts(
    @Path('id') int id,
  );

  @PUT('carts/{id}')
  Future<void> updateCarts(
    @Path('id') int id,
    @Body() dynamic cartsResponse,
  );

  @POST('carts')
  Future<void> addToCart(
    @Body() dynamic cartsResponse,
  );

  @DELETE('carts/{id}')
  Future<void> deleteCart(
    @Path('id') int id,
  );
}
