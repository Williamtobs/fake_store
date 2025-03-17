import 'package:fake_store/src/services/local_storage_service.dart';

abstract class UserStorageService {
  /// Method signature for adding or updating user in the DB
  // void saveUser(User? user);
  // login user response
//   {
//     "id": 11
// }

  void saveToken(String token);

  /// Method for deleting user / clearing DB
  void deleteUser();

  String? getToken();
}

class UserStorageServiceImpl implements UserStorageService {
  UserStorageServiceImpl(this._localStorageService);
  final LocalStorageService _localStorageService;

  @override
  void deleteUser() {
    _localStorageService.deletePreference(key: 'user');
  }

  @override
  void saveToken(String token) {
    _localStorageService.savePreference(key: 'token', data: token);
  }

  @override
  String? getToken() {
    return _localStorageService.getPreference(key: 'token');
  }
}
