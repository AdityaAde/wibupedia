// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_anime_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailAnimeModelsImpl _$$DetailAnimeModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailAnimeModelsImpl(
      animeDetail: json['anime_detail'] == null
          ? null
          : AnimeModels.fromJson(json['anime_detail'] as Map<String, dynamic>),
      episodeList: (json['episode_list'] as List<dynamic>?)
          ?.map((e) => EpisodeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailAnimeModelsImplToJson(
        _$DetailAnimeModelsImpl instance) =>
    <String, dynamic>{
      'anime_detail': instance.animeDetail,
      'episode_list': instance.episodeList,
    };
