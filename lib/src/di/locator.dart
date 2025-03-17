import 'package:fake_store/src/core/networking/dio_interceptors.dart';
import 'package:fake_store/src/features/authentication/data/client/auth_client.dart';
import 'package:fake_store/src/features/authentication/data/datasources/auth_data_source.dart';
import 'package:fake_store/src/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:fake_store/src/features/authentication/domain/repositories/auth_repository.dart';
import 'package:fake_store/src/features/authentication/domain/usecases/get_user_use_case.dart';
import 'package:fake_store/src/features/authentication/domain/usecases/login_use_case.dart';
import 'package:fake_store/src/services/local_storage_service.dart';
import 'package:fake_store/src/services/user_storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
