import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/use_case.dart';
import 'package:fake_store/src/features/authentication/data/models/user_response.dart';
import 'package:fake_store/src/features/authentication/domain/repositories/auth_repository.dart';

class GetUserUseCase with UseCase<UserResponse, int> {
  final AuthRepository _repository;
  GetUserUseCase(this._repository);

  @override
  Future<Either<Failure, UserResponse>> call(int params) {
    return _repository.getUser(params);
  }
}
