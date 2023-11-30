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
    String? updatedOn,
    String? updatedDay,
    String? endpoint,
  }) = _AnimeModels;

  factory AnimeModels.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelsFromJson(json);
}
