part of 'locator.dart';

Future<void> _initUseCaseLocator() async {
  locator
    ..registerLazySingleton(() => LoginUseCase(locator()))
    ..registerLazySingleton(() => GetUserUseCase(locator()))
    ..registerLazySingleton(() => GetProductsUseCase(locator()))
    ..registerLazySingleton(() => GetCartUseCase(locator()))
    ..registerLazySingleton(() => UpdateCartsUseCase(locator()))
    ..registerLazySingleton(() => AddToCartUseCase(locator()))
    ..registerLazySingleton(() => DeleteCartUseCase(locator()));
}
