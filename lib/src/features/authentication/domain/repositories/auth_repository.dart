import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/features/authentication/data/models/user_info.dart';
import 'package:fake_store/src/features/authentication/data/models/user_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, dynamic>> login(UserInfo body);

  Future<Either<Failure, UserResponse>> getUser(int id);
}
