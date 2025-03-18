import 'package:fake_store/src/di/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  const LocalStorageService();

  Future<void> savePreference({required String key, required String data});

  String? getPreference({required String key});

  Future<void> deletePreference({required String key});

  Future<void> clearAll();
}

class LocalStorageServiceImpl implements LocalStorageService {
  LocalStorageServiceImpl();

  final SharedPreferences _sharedPreferences = locator<SharedPreferences>();

  @override
  Future<void> savePreference(
      {required String key, required String data}) async {
    await _sharedPreferences.setString(key, data);
  }

  @override
  String? getPreference({required String key}) {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<void> deletePreference({required String key}) async {
    await _sharedPreferences.remove(key);
  }

  @override
  Future<void> clearAll() async {
    await _sharedPreferences.clear();
  }
}
