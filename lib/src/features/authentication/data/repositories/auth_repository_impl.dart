import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/extensions/repositories_extension.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/features/authentication/data/datasources/auth_data_source.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/data/models/user_response.dart';
import 'package:fake_store/src/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _dataSource;
  AuthRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, dynamic>> login(UserInfo body) {
    return _dataSource.login(body).makeRequest();
  }

  @override
  Future<Either<Failure, UserResponse>> getUser(int id) {
    return _dataSource.getUser(id).makeRequest();
  }
}
