part of 'locator.dart';

void _initClients() {
  locator
    ..registerLazySingleton<AuthClient>(
      () => AuthClient(
        locator(),
      ),
    )
    ..registerLazySingleton<ProductsClient>(
      () => ProductsClient(
        locator(),
      ),
    );
}
