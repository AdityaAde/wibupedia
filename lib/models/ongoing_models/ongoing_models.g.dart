// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ongoing_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OngoingModelsImpl _$$OngoingModelsImplFromJson(Map<String, dynamic> json) =>
    _$OngoingModelsImpl(
      ongoing: (json['ongoing'] as List<dynamic>?)
          ?.map((e) => AnimeModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentpage: json['currentpage'] as String?,
    );

Map<String, dynamic> _$$OngoingModelsImplToJson(_$OngoingModelsImpl instance) =>
    <String, dynamic>{
      'ongoing': instance.ongoing,
      'currentpage': instance.currentpage,
    };
