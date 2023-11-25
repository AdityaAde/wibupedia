import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../component/injector.dart';
import '../data/remote/remote.dart';

class AuthenticationRepository {
  final AuthenticationService _authenticationService = getIt.get();

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
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, User?>> twitterAuth() async {
    try {
      final result = await _authenticationService.signInWithTwitter();
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
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, User?>> signUpWithEmail(
      String email, String password) async {
    try {
      final result = await _authenticationService.signUpWithEmail(
        email,
        password,
      );
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
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, User?>> signInWithEmail(
      String email, String password) async {
    try {
      final result = await _authenticationService.signInWithEmail(
        email,
        password,
      );
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
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, void>> logout() async {
    try {
      final result = await _authenticationService.logout();
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
      return Left(Exception(e));
    }
  }
}
