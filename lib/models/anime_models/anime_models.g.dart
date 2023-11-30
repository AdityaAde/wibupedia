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
      'updatedOn': instance.updatedOn,
      'updatedDay': instance.updatedDay,
      'endpoint': instance.endpoint,
    };
