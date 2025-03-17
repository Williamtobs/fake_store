import 'package:fake_store/src/core/networking/dio_interceptors.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

part 'external_locator.dart';
part 'client_locator.dart';
part 'data_source_locator.dart';
part 'repository_locator.dart';
part 'use_case_locator.dart';
part 'service_locator.dart';

final locator = GetIt.instance;

void initLocator() {
  _initExternal();
  _initClients();
  _initDataSource();
  _initRepositoryLocator();
  _initUseCaseLocator();
  _initServices();
}
