import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../data/remote/remote.dart';

class AuthenticationRepository {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<Either<Exception, User?>> googleAuth() async {
    try {
      final result = await _authenticationService.signInWithGoogle();
      return Right(result);
    } on DioException catch (dioError) {
      if (dioError.response?.statusCode == 401) {
        return Left(Exception('Unauthenticated'));
      }
      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return Left(Exception('No Connection'));
        case DioExceptionType.badResponse:
          return Left(Exception('Error Data Parsing'));
        default:
          return Left(Exception());
      }
    } catch (e) {
      return Left(Exception());
    }
  }
}
