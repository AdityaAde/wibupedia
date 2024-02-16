// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarksModels _$BookmarksModelsFromJson(Map<String, dynamic> json) {
  return _BookmarksModels.fromJson(json);
}

/// @nodoc
mixin _$BookmarksModels {
  String? get name => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get docId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarksModelsCopyWith<BookmarksModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksModelsCopyWith<$Res> {
  factory $BookmarksModelsCopyWith(
          BookmarksModels value, $Res Function(BookmarksModels) then) =
      _$BookmarksModelsCopyWithImpl<$Res, BookmarksModels>;
  @useResult
  $Res call(
      {String? name,
      String? thumbnail,
      String? endpoint,
      String? status,
      String? docId});
}

/// @nodoc
class _$BookmarksModelsCopyWithImpl<$Res, $Val extends BookmarksModels>
    implements $BookmarksModelsCopyWith<$Res> {
  _$BookmarksModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? endpoint = freezed,
    Object? status = freezed,
    Object? docId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarksModelsImplCopyWith<$Res>
    implements $BookmarksModelsCopyWith<$Res> {
  factory _$$BookmarksModelsImplCopyWith(_$BookmarksModelsImpl value,
          $Res Function(_$BookmarksModelsImpl) then) =
      __$$BookmarksModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? thumbnail,
      String? endpoint,
      String? status,
      String? docId});
}

/// @nodoc
class __$$BookmarksModelsImplCopyWithImpl<$Res>
    extends _$BookmarksModelsCopyWithImpl<$Res, _$BookmarksModelsImpl>
    implements _$$BookmarksModelsImplCopyWith<$Res> {
  __$$BookmarksModelsImplCopyWithImpl(
      _$BookmarksModelsImpl _value, $Res Function(_$BookmarksModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? endpoint = freezed,
    Object? status = freezed,
    Object? docId = freezed,
  }) {
    return _then(_$BookmarksModelsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarksModelsImpl implements _BookmarksModels {
  const _$BookmarksModelsImpl(
      {this.name, this.thumbnail, this.endpoint, this.status, this.docId});

  factory _$BookmarksModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarksModelsImplFromJson(json);

  @override
  final String? name;
  @override
  final String? thumbnail;
  @override
  final String? endpoint;
  @override
  final String? status;
  @override
  final String? docId;

  @override
  String toString() {
    return 'BookmarksModels(name: $name, thumbnail: $thumbnail, endpoint: $endpoint, status: $status, docId: $docId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarksModelsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, thumbnail, endpoint, status, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarksModelsImplCopyWith<_$BookmarksModelsImpl> get copyWith =>
      __$$BookmarksModelsImplCopyWithImpl<_$BookmarksModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarksModelsImplToJson(
      this,
    );
  }
}

abstract class _BookmarksModels implements BookmarksModels {
  const factory _BookmarksModels(
      {final String? name,
      final String? thumbnail,
      final String? endpoint,
      final String? status,
      final String? docId}) = _$BookmarksModelsImpl;

  factory _BookmarksModels.fromJson(Map<String, dynamic> json) =
      _$BookmarksModelsImpl.fromJson;

  @override
  String? get name;
  @override
  String? get thumbnail;
  @override
  String? get endpoint;
  @override
  String? get status;
  @override
  String? get docId;
  @override
  @JsonKey(ignore: true)
  _$$BookmarksModelsImplCopyWith<_$BookmarksModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
