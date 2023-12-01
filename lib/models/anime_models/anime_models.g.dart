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
      totalEpisode: json['totalEpisode'] as String?,
      sinopsis: (json['sinopsis'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      detail:
          (json['detail'] as List<dynamic>?)?.map((e) => e as String).toList(),
      episodeList: (json['episodeList'] as List<dynamic>?)
          ?.map((e) => EpisodeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedOn: json['updatedOn'] as String?,
      updatedDay: json['updatedDay'] as String?,
      endpoint: json['endpoint'] as String?,
    );

Map<String, dynamic> _$$_AnimeModelsToJson(_$_AnimeModels instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumb': instance.thumb,
      'score': instance.score,
      'totalEpisode': instance.totalEpisode,
      'sinopsis': instance.sinopsis,
      'detail': instance.detail,
      'episodeList': instance.episodeList,
      'updatedOn': instance.updatedOn,
      'updatedDay': instance.updatedDay,
      'endpoint': instance.endpoint,
    };

_$_EpisodeModels _$$_EpisodeModelsFromJson(Map<String, dynamic> json) =>
    _$_EpisodeModels(
      episodeTitle: json['episodeTitle'] as String?,
      episodeEndpoint: json['episodeEndpoint'] as String?,
      episodeDate: json['episodeDate'] as String?,
    );

Map<String, dynamic> _$$_EpisodeModelsToJson(_$_EpisodeModels instance) =>
    <String, dynamic>{
      'episodeTitle': instance.episodeTitle,
      'episodeEndpoint': instance.episodeEndpoint,
      'episodeDate': instance.episodeDate,
    };
