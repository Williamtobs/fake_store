import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/domain/repositories/auth_repository.dart';

class LoginUseCase with UseCase<dynamic, UserInfo> {
  LoginUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Either<Failure, dynamic>> call(UserInfo params) {
    return _repository.login(params);
  }
}
