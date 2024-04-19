import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../component/injector.dart';
import '../data/remote/remote.dart';

class FirebaseMessagingRepository {
  final FirebaseMessagingApi _firebaseMessagingApi;

  FirebaseMessagingRepository(this._firebaseMessagingApi);

  factory FirebaseMessagingRepository.create() =>
      FirebaseMessagingRepository(getIt.get());

  Future<Either<Exception, bool>> pushNotification(
      {required String title, required String body}) async {
    try {
      final result = await _firebaseMessagingApi.pushNotification(title, body);
      return Right(result);
    } on DioException catch (dioError) {
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
