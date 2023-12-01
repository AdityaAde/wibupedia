// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'detail_anime_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailAnimeModels _$$_DetailAnimeModelsFromJson(Map<String, dynamic> json) =>
    _$_DetailAnimeModels(
      animeDetail: json['anime_detail'] == null
          ? null
          : AnimeModels.fromJson(json['anime_detail'] as Map<String, dynamic>),
      episodeList: (json['episode_list'] as List<dynamic>?)
          ?.map((e) => EpisodeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DetailAnimeModelsToJson(
        _$_DetailAnimeModels instance) =>
    <String, dynamic>{
      'anime_detail': instance.animeDetail,
      'episode_list': instance.episodeList,
    };
