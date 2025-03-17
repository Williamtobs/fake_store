import 'package:dio/dio.dart';
import 'package:fake_store/src/core/error/exceptions.dart';
import 'package:fake_store/src/core/error/failure.dart';
import 'package:fake_store/src/core/utils/either.dart';
import 'package:fake_store/src/core/utils/error_message_handler.dart';
import 'package:flutter/material.dart';

extension RepositoryExtension<T> on Future<T> {
  Future<Either<Failure, T>> makeRequest() async {
    try {
      final data = await this;
      return Right(data);
    } on DioException catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return Left(
        ServerFailure(
          message: e.errorMessage,
        ),
      );
    } on ServerException catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return Left(
        ServerFailure(
          message: e.errorMessage,
        ),
      );
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      debugPrintStack();
      return const Left(
        ServerFailure(
          message: 'Something went wrong. Please try again',
        ),
      );
    }
  }
}
