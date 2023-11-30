import 'dart:convert';

import 'package:flutter/material.dart';

import '../../component/endpoint.dart';
import '../../component/injector.dart';
import '../../component/keys.dart';
import '../../models/models.dart';
import 'base_service.dart';

class AnimeService extends Endpoint {
  final BaseService _baseService;
  AnimeService(this._baseService);

  factory AnimeService.create() => AnimeService(getIt.get());

  Future<OngoingModels> ongoingAnime({String? page = '1'}) async {
    final url = endpointBaseUrlWithVersion(
      path: '${ServiceUrl.ongoingUrl}/$page',
    );
    final response = await _baseService.dio.get(url);
    final Map<String, dynamic> data = jsonDecode(response.data);
    final result = OngoingModels.fromJson(data);
    debugPrint('clog page ${result.currentpage}');
    return result;
  }
}