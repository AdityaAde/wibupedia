// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'search_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchAnimeModels _$$_SearchAnimeModelsFromJson(Map<String, dynamic> json) =>
    _$_SearchAnimeModels(
      search: (json['search'] as List<dynamic>?)
          ?.map((e) => AnimeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchAnimeModelsToJson(
        _$_SearchAnimeModels instance) =>
    <String, dynamic>{
      'search': instance.search,
    };
