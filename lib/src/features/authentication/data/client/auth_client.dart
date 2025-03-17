import 'package:dio/dio.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/data/models/user_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('auth/login')
  Future<dynamic> login(@Body() UserInfo body);

  @GET('users/{id}')
  Future<UserResponse> getUser(@Path() int id);
}
