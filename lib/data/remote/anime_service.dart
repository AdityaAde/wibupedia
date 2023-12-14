import 'dart:convert';

import 'package:wibupedia/models/search_models/search_models.dart';

import '../../component/endpoint.dart';
import '../../component/injector.dart';
import '../../component/keys.dart';
import '../../models/models.dart';
import 'base_service.dart';

class AnimeService extends Endpoint {
  final BaseService _baseService;
  AnimeService(this._baseService);

  factory AnimeService.create() => AnimeService(getIt.get());

  Future<OngoingModels> ongoingAnime({String? page}) async {
    final url = endpointBaseUrlWithVersion(
      path: '${ServiceUrl.ongoingUrl}/$page',
    );
    final response = await _baseService.dio.get(url);
    final Map<String, dynamic> data = jsonDecode(response.data);
    final result = OngoingModels.fromJson(data);
    return result;
  }

  Future<CompletedModels> completedAnime({String? page}) async {
    final url = endpointBaseUrlWithVersion(
      path: '${ServiceUrl.completedAnimeUrl}/$page',
    );
    final response = await _baseService.dio.get(url);
    final Map<String, dynamic> data = jsonDecode(response.data);
    final result = CompletedModels.fromJson(data);
    return result;
  }

  Future<DetailAnimeModels> detailAnime(String anime) async {
    final url = endpointBaseUrlWithVersion(
      path: '${ServiceUrl.detailAnimeUrl}/$anime',
    );
    final response = await _baseService.dio.get(url);
    final Map<String, dynamic> data = jsonDecode(response.data);
    final result = DetailAnimeModels.fromJson(data);
    return result;
  }

  Future<SearchAnimeModels> searchAnime(String anime) async {
    final url = endpointBaseUrlWithVersion(
      path: '${ServiceUrl.searchAnimeUrl}/$anime',
    );
    final response = await _baseService.dio.get(url);
    final Map<String, dynamic> data = jsonDecode(response.data);
    final result = SearchAnimeModels.fromJson(data);
    return result;
  }
}
