part of 'locator.dart';

Future<void> _initServices() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final locator = GetIt.instance;
  locator.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  locator
    ..registerLazySingleton<UserStorageService>(
      () => UserStorageServiceImpl(locator()),
    )
    ..registerLazySingleton<LocalStorageService>(
      LocalStorageServiceImpl.new,
    );
}
