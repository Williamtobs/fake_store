import 'package:fake_store/src/core/networking/dio_interceptors.dart';
import 'package:fake_store/src/features/authentication/data/client/auth_client.dart';
import 'package:fake_store/src/features/authentication/data/datasources/auth_data_source.dart';
import 'package:fake_store/src/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:fake_store/src/features/authentication/domain/repositories/auth_repository.dart';
import 'package:fake_store/src/features/authentication/domain/usecases/get_user_use_case.dart';
import 'package:fake_store/src/features/authentication/domain/usecases/login_use_case.dart';
import 'package:fake_store/src/features/cart/data/client/cart_client.dart';
import 'package:fake_store/src/features/cart/data/datasources/cart_data_source.dart';
import 'package:fake_store/src/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:fake_store/src/features/cart/domain/repositories/cart_repository.dart';
import 'package:fake_store/src/features/cart/domain/usecases/add_to_cart_use_case.dart';
import 'package:fake_store/src/features/cart/domain/usecases/delete_cart_use_case.dart';
import 'package:fake_store/src/features/cart/domain/usecases/get_cart_use_case.dart';
import 'package:fake_store/src/features/cart/domain/usecases/update_carts_use_case.dart';
import 'package:fake_store/src/features/home/data/client/products_client.dart';
import 'package:fake_store/src/features/home/data/datasources/products__data_source.dart';
import 'package:fake_store/src/features/home/data/repositories/products_repository_impl.dart';
import 'package:fake_store/src/features/home/domain/repositories/products_repository.dart';
import 'package:fake_store/src/features/home/domain/usecases/get_products_use_case.dart';
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

Future<void> initLocator() async {
  _initExternal();
  _initClients();
  _initDataSource();
  _initRepositoryLocator();
  _initUseCaseLocator();
  await _initServices();
}
