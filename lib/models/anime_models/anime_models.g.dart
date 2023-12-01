// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'anime_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimeModels _$$_AnimeModelsFromJson(Map<String, dynamic> json) =>
    _$_AnimeModels(
      title: json['title'] as String?,
      thumb: json['thumb'] as String?,
      score: json['score'] as String?,
      totalEpisode: json['total_episode'] as String?,
      sinopsis: (json['sinopsis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      detail:
          (json['detail'] as List<dynamic>?)?.map((e) => e as String).toList(),
      updatedOn: json['updated_on'] as String?,
      updatedDay: json['updated_day'] as String?,
      endpoint: json['endpoint'] as String?,
    );

Map<String, dynamic> _$$_AnimeModelsToJson(_$_AnimeModels instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumb': instance.thumb,
      'score': instance.score,
      'total_episode': instance.totalEpisode,
      'sinopsis': instance.sinopsis,
      'detail': instance.detail,
      'updated_on': instance.updatedOn,
      'updated_day': instance.updatedDay,
      'endpoint': instance.endpoint,
    };

_$_EpisodeModels _$$_EpisodeModelsFromJson(Map<String, dynamic> json) =>
    _$_EpisodeModels(
      episodeTitle: json['episode_title'] as String?,
      episodeEndpoint: json['episode_endpoint'] as String?,
      episodeDate: json['episode_date'] as String?,
    );

Map<String, dynamic> _$$_EpisodeModelsToJson(_$_EpisodeModels instance) =>
    <String, dynamic>{
      'episode_title': instance.episodeTitle,
      'episode_endpoint': instance.episodeEndpoint,
      'episode_date': instance.episodeDate,
    };
