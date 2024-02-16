// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeModelsImpl _$$AnimeModelsImplFromJson(Map<String, dynamic> json) =>
    _$AnimeModelsImpl(
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

Map<String, dynamic> _$$AnimeModelsImplToJson(_$AnimeModelsImpl instance) =>
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

_$EpisodeModelsImpl _$$EpisodeModelsImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeModelsImpl(
      episodeTitle: json['episode_title'] as String?,
      episodeEndpoint: json['episode_endpoint'] as String?,
      episodeDate: json['episode_date'] as String?,
    );

Map<String, dynamic> _$$EpisodeModelsImplToJson(_$EpisodeModelsImpl instance) =>
    <String, dynamic>{
      'episode_title': instance.episodeTitle,
      'episode_endpoint': instance.episodeEndpoint,
      'episode_date': instance.episodeDate,
    };
