import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'search_models.freezed.dart';
part 'search_models.g.dart';

@freezed
class SearchAnimeModels with _$SearchAnimeModels {
  const SearchAnimeModels._();
  const factory SearchAnimeModels({
    List<AnimeModels>? search,
    String? title,
    String? thumb,
    String? link,
    String? studio,
  }) = _SearchAnimeModels;

  factory SearchAnimeModels.fromJson(Map<String, dynamic> json) =>
      _$SearchAnimeModelsFromJson(json);

  String? get endpointAnime {
    int startIndex = link!.indexOf('/anime/') + '/anime/'.length;
    String subString = link!.substring(startIndex);

    return subString;
  }
}
