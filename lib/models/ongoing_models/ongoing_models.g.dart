// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'ongoing_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OngoingModels _$$_OngoingModelsFromJson(Map<String, dynamic> json) =>
    _$_OngoingModels(
      ongoing: (json['ongoing'] as List<dynamic>?)
          ?.map((e) => AnimeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentpage: json['currentpage'] as String?,
    );

Map<String, dynamic> _$$_OngoingModelsToJson(_$_OngoingModels instance) =>
    <String, dynamic>{
      'ongoing': instance.ongoing,
      'currentpage': instance.currentpage,
    };
