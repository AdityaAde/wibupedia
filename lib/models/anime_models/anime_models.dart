import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_models.freezed.dart';
part 'anime_models.g.dart';

@freezed
class AnimeModels with _$AnimeModels {
  const AnimeModels._();
  const factory AnimeModels({
    String? title,
    String? thumb,
    String? score,
    String? totalEpisode,
    List<String>? sinopsis,
    List<String>? detail,
    String? updatedOn,
    String? updatedDay,
    String? endpoint,
  }) = _AnimeModels;

  factory AnimeModels.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelsFromJson(json);

  String? get endpointAnime {
    int startIndex = endpoint!.indexOf('/anime/') + '/anime/'.length;
    String subString = endpoint!.substring(startIndex);

    return subString;
  }

  String? get scoreAnime {
    String value = detail![2].replaceAll('Skor: ', '');
    return value;
  }

  String get studioAnime {
    String value = detail![9].replaceAll('Studio: ', '');
    return value;
  }

  String get statusAnime {
    String value = detail![5].replaceAll('Status: ', '');
    return value;
  }

  String get genreAnime {
    String value = detail![10];
    return value;
  }
}

@freezed
class EpisodeModels with _$EpisodeModels {
  const EpisodeModels._();
  const factory EpisodeModels({
    String? episodeTitle,
    String? episodeEndpoint,
    String? episodeDate,
  }) = _EpisodeModels;

  String get titleEpisode {
    int startIndex = episodeTitle!.indexOf('Episode') + 'Episode'.length;
    String subString = episodeTitle!.substring(startIndex);
    return 'Episode $subString';
  }

  factory EpisodeModels.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelsFromJson(json);
}
