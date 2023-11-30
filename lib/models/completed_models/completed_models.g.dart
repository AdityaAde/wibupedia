// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'completed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompletedModels _$$_CompletedModelsFromJson(Map<String, dynamic> json) =>
    _$_CompletedModels(
      completed: (json['completed'] as List<dynamic>?)
          ?.map((e) => AnimeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentpage: json['currentpage'] as String?,
    );

Map<String, dynamic> _$$_CompletedModelsToJson(_$_CompletedModels instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'currentpage': instance.currentpage,
    };
