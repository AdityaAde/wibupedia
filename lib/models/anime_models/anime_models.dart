import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_models.freezed.dart';
part 'anime_models.g.dart';

@freezed
class AnimeModels with _$AnimeModels {
  const factory AnimeModels({
    String? title,
    String? thumb,
    String? score,
    String? totalEpisode,
    List<String>? sinopsis,
    List<String>? detail,
    List<EpisodeModels>? episodeList,
    String? updatedOn,
    String? updatedDay,
    String? endpoint,
  }) = _AnimeModels;

  factory AnimeModels.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelsFromJson(json);
}

@freezed
class EpisodeModels with _$EpisodeModels {
  const factory EpisodeModels({
    String? episodeTitle,
    String? episodeEndpoint,
    String? episodeDate,
  }) = _EpisodeModels;

  factory EpisodeModels.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelsFromJson(json);
}
