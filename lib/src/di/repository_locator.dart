part of 'locator.dart';

Future<void> _initRepositoryLocator() async {
  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(locator()),
  );
}
