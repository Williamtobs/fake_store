part of 'locator.dart';

Future<void> _initUseCaseLocator() async {
  locator
    ..registerLazySingleton(() => LoginUseCase(locator()))
    ..registerLazySingleton(() => GetUserUseCase(locator()));
}
