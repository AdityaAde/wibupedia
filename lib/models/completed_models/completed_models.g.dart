// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedModelsImpl _$$CompletedModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedModelsImpl(
      completed: (json['completed'] as List<dynamic>?)
          ?.map((e) => AnimeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentpage: json['currentpage'] as String?,
    );

Map<String, dynamic> _$$CompletedModelsImplToJson(
        _$CompletedModelsImpl instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'currentpage': instance.currentpage,
    };
