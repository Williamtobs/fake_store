part of 'locator.dart';

void _initDataSource() {
  locator
    ..registerLazySingleton(() => AuthDataSource(locator()))
    ..registerLazySingleton(() => ProductsDataSource(locator()))
    ..registerLazySingleton(() => CartDataSource(locator()));
}
