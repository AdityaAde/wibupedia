import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../component/injector.dart';
import '../data/remote/remote.dart';
import '../models/models.dart';

class AnimeRepository {
  final AnimeService _animeService;

  AnimeRepository(this._animeService);

  factory AnimeRepository.create() => AnimeRepository(getIt.get());

  Future<Either<Exception, OngoingModels>> ongoingAnime({String? page}) async {
    try {
      final result = await _animeService.ongoingAnime(page: page);
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

  Future<Either<Exception, CompletedModels>> completedAnime(
      {String? page}) async {
    try {
      final result = await _animeService.completedAnime(page: page);
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

  Future<Either<Exception, DetailAnimeModels>> detailAnime(String anime) async {
    try {
      final result = await _animeService.detailAnime(anime);
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

  Future<Either<Exception, SearchAnimeModels>> searchAnime(String anime) async {
    try {
      final result = await _animeService.searchAnime(anime);
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

  Future<Either<Exception, List<GenreModels>>> genresAnime() async {
    try {
      final result = await _animeService.genresAnime();
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

  Future<Either<Exception, List<SearchAnimeModels>>> searchAnimeByGenre(
    String genre,
  ) async {
    try {
      final result = await _animeService.searchAnimeByGenre(genre);
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
