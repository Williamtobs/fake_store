import 'dart:convert';

import 'package:fake_store/src/features/authentication/data/models/user_response.dart';
import 'package:fake_store/src/features/home/data/model/product_response.dart';
import 'package:fake_store/src/services/local_storage_service.dart';

abstract class UserStorageService {
  /// Method signature for adding or updating user in the DB
  void saveUser(UserResponse? user);

  void saveToken(String token);

  /// Method for deleting user / clearing DB
  void deleteUser();

  String? getToken();

  UserResponse? getUser();

  void clearToken();

  void addToWishList(ProductResponse product);

  List<ProductResponse>? getWishList();

  void removeFromWishList(ProductResponse product);

  void clearAll();
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

  @override
  void saveUser(UserResponse? user) {
    _localStorageService.savePreference(
        key: 'user', data: json.encode(user!.toJson()));
  }

  @override
  UserResponse? getUser() {
    final user = (_localStorageService.getPreference(key: 'user'));
    if (user != null) {
      return UserResponse.fromJson(jsonDecode(user) as Map<String, dynamic>);
    }
    return null;
  }

  @override
  void clearToken() {
    _localStorageService.deletePreference(key: 'token');
  }

  @override
  void addToWishList(ProductResponse product) {
    final wishList = getWishList();
    if (wishList == null) {
      _localStorageService.savePreference(
          key: 'wishList', data: json.encode([product.toJson()]));
    } else {
      wishList.add(product);
      _localStorageService.savePreference(
          key: 'wishList', data: json.encode(wishList));
    }
  }

  @override
  List<ProductResponse>? getWishList() {
    final wishList = _localStorageService.getPreference(key: 'wishList');
    if (wishList != null) {
      return List<ProductResponse>.from(
          jsonDecode(wishList).map((x) => ProductResponse.fromJson(x)));
    }
    return null;
  }

  @override
  void removeFromWishList(ProductResponse product) {
    final wishList = getWishList();
    if (wishList != null) {
      wishList.removeWhere((element) => element.id == product.id);
      _localStorageService.savePreference(
          key: 'wishList', data: json.encode(wishList));
    }
  }

  @override
  void clearAll() {
    _localStorageService.clearAll();
  }
}
