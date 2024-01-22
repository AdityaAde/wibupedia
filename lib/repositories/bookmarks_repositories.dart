import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../component/component.dart';
import '../data/remote/remote.dart';
import '../models/models.dart';

class BookmarksRepositories {
  final BookmarksService _bookmarksService;

  BookmarksRepositories(this._bookmarksService);

  factory BookmarksRepositories.create() => BookmarksRepositories(getIt.get());

  Future<Either<Exception, void>> bookmakrsAnime(
    BookmarksModels anime,
  ) async {
    try {
      final result = await _bookmarksService.bookmarksAnime(anime);
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

  Future<Either<Exception, List<BookmarksModels>>> getBookmarks() async {
    try {
      final result = await _bookmarksService.getBookmarks();
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

  Future<Either<Exception, bool>> deleteBookmarks(String docId) async {
    try {
      final result = await _bookmarksService.deleteBookmarks(docId);
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
