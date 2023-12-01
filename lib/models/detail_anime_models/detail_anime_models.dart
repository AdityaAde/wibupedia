import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wibupedia/models/models.dart';

part 'detail_anime_models.freezed.dart';
part 'detail_anime_models.g.dart';

@freezed
class DetailAnimeModels with _$DetailAnimeModels {
  const DetailAnimeModels._();

  const factory DetailAnimeModels({
    AnimeModels? animeDetail,
    List<EpisodeModels>? episodeList,
  }) = _DetailAnimeModels;

  List<EpisodeModels> get episodeAnime {
    return episodeList!.reversed.toList();
  }

  factory DetailAnimeModels.fromJson(Map<String, dynamic> json) =>
      _$DetailAnimeModelsFromJson(json);
}
