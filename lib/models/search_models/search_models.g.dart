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
    );

Map<String, dynamic> _$$SearchAnimeModelsImplToJson(
        _$SearchAnimeModelsImpl instance) =>
    <String, dynamic>{
      'search': instance.search,
    };
