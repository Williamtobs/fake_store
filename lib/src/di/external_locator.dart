part of 'locator.dart';

void _initExternal() {
  locator
    ..registerLazySingleton<Dio>(
      () => Dio(
        BaseOptions(
          baseUrl: 'https://fakestoreapi.com/',
          contentType: 'application/json',
          connectTimeout: const Duration(seconds: 20),
        ),
      )..interceptors.addAll(
          [
            LoggingInterceptor(logger: locator()),
            DataParserInterceptor(),
          ],
        ),
    )
    // ..registerLazySingleton<SharedPreferences>(
    //   () => SharedPreferences.getInstance(),
    // )
    ..registerLazySingleton<Logger>(
      Logger.new,
    );
}
