// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarksModelsImpl _$$BookmarksModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$BookmarksModelsImpl(
      name: json['name'] as String?,
      thumbnail: json['thumbnail'] as String?,
      endpoint: json['endpoint'] as String?,
      status: json['status'] as String?,
      docId: json['doc_id'] as String?,
    );

Map<String, dynamic> _$$BookmarksModelsImplToJson(
        _$BookmarksModelsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'thumbnail': instance.thumbnail,
      'endpoint': instance.endpoint,
      'status': instance.status,
      'doc_id': instance.docId,
    };
