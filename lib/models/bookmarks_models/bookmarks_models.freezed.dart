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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookmarksModels _$BookmarksModelsFromJson(Map<String, dynamic> json) {
  return _BookmarksModels.fromJson(json);
}

/// @nodoc
mixin _$BookmarksModels {
  String? get name => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get endpoints => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

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
      {String? name, String? thumbnail, String? endpoints, String? status});
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
    Object? endpoints = freezed,
    Object? status = freezed,
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
      endpoints: freezed == endpoints
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookmarksModelsCopyWith<$Res>
    implements $BookmarksModelsCopyWith<$Res> {
  factory _$$_BookmarksModelsCopyWith(
          _$_BookmarksModels value, $Res Function(_$_BookmarksModels) then) =
      __$$_BookmarksModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? thumbnail, String? endpoints, String? status});
}

/// @nodoc
class __$$_BookmarksModelsCopyWithImpl<$Res>
    extends _$BookmarksModelsCopyWithImpl<$Res, _$_BookmarksModels>
    implements _$$_BookmarksModelsCopyWith<$Res> {
  __$$_BookmarksModelsCopyWithImpl(
      _$_BookmarksModels _value, $Res Function(_$_BookmarksModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? endpoints = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_BookmarksModels(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoints: freezed == endpoints
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarksModels implements _BookmarksModels {
  const _$_BookmarksModels(
      {this.name, this.thumbnail, this.endpoints, this.status});

  factory _$_BookmarksModels.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarksModelsFromJson(json);

  @override
  final String? name;
  @override
  final String? thumbnail;
  @override
  final String? endpoints;
  @override
  final String? status;

  @override
  String toString() {
    return 'BookmarksModels(name: $name, thumbnail: $thumbnail, endpoints: $endpoints, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarksModels &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.endpoints, endpoints) ||
                other.endpoints == endpoints) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, thumbnail, endpoints, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarksModelsCopyWith<_$_BookmarksModels> get copyWith =>
      __$$_BookmarksModelsCopyWithImpl<_$_BookmarksModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarksModelsToJson(
      this,
    );
  }
}

abstract class _BookmarksModels implements BookmarksModels {
  const factory _BookmarksModels(
      {final String? name,
      final String? thumbnail,
      final String? endpoints,
      final String? status}) = _$_BookmarksModels;

  factory _BookmarksModels.fromJson(Map<String, dynamic> json) =
      _$_BookmarksModels.fromJson;

  @override
  String? get name;
  @override
  String? get thumbnail;
  @override
  String? get endpoints;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarksModelsCopyWith<_$_BookmarksModels> get copyWith =>
      throw _privateConstructorUsedError;
}
