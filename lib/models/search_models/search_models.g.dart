// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchAnimeModelsImpl _$$SearchAnimeModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchAnimeModelsImpl(
      search: (json['search'] as List<dynamic>?)
          ?.map((e) => AnimeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      thumb: json['thumb'] as String?,
      link: json['link'] as String?,
      studio: json['studio'] as String?,
    );

Map<String, dynamic> _$$SearchAnimeModelsImplToJson(
        _$SearchAnimeModelsImpl instance) =>
    <String, dynamic>{
      'search': instance.search,
      'title': instance.title,
      'thumb': instance.thumb,
      'link': instance.link,
      'studio': instance.studio,
    };
