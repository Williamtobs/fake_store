import 'package:fake_store/src/features/authentication/data/client/auth_client.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/data/models/user_response.dart';

class AuthDataSource {
  final AuthClient _client;

  AuthDataSource(this._client);

  Future<dynamic> login(UserInfo body) async {
    return await _client.login(body);
  }

  Future<UserResponse> getUser(int id) async {
    return await _client.getUser(id);
  }
}
