// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenreModels _$GenreModelsFromJson(Map<String, dynamic> json) {
  return _GenreModels.fromJson(json);
}

/// @nodoc
mixin _$GenreModels {
  String? get genre => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreModelsCopyWith<GenreModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreModelsCopyWith<$Res> {
  factory $GenreModelsCopyWith(
          GenreModels value, $Res Function(GenreModels) then) =
      _$GenreModelsCopyWithImpl<$Res, GenreModels>;
  @useResult
  $Res call({String? genre, String? endpoint});
}

/// @nodoc
class _$GenreModelsCopyWithImpl<$Res, $Val extends GenreModels>
    implements $GenreModelsCopyWith<$Res> {
  _$GenreModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_value.copyWith(
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreModelsImplCopyWith<$Res>
    implements $GenreModelsCopyWith<$Res> {
  factory _$$GenreModelsImplCopyWith(
          _$GenreModelsImpl value, $Res Function(_$GenreModelsImpl) then) =
      __$$GenreModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? genre, String? endpoint});
}

/// @nodoc
class __$$GenreModelsImplCopyWithImpl<$Res>
    extends _$GenreModelsCopyWithImpl<$Res, _$GenreModelsImpl>
    implements _$$GenreModelsImplCopyWith<$Res> {
  __$$GenreModelsImplCopyWithImpl(
      _$GenreModelsImpl _value, $Res Function(_$GenreModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_$GenreModelsImpl(
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreModelsImpl implements _GenreModels {
  const _$GenreModelsImpl({this.genre, this.endpoint});

  factory _$GenreModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreModelsImplFromJson(json);

  @override
  final String? genre;
  @override
  final String? endpoint;

  @override
  String toString() {
    return 'GenreModels(genre: $genre, endpoint: $endpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreModelsImpl &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genre, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreModelsImplCopyWith<_$GenreModelsImpl> get copyWith =>
      __$$GenreModelsImplCopyWithImpl<_$GenreModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreModelsImplToJson(
      this,
    );
  }
}

abstract class _GenreModels implements GenreModels {
  const factory _GenreModels({final String? genre, final String? endpoint}) =
      _$GenreModelsImpl;

  factory _GenreModels.fromJson(Map<String, dynamic> json) =
      _$GenreModelsImpl.fromJson;

  @override
  String? get genre;
  @override
  String? get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$GenreModelsImplCopyWith<_$GenreModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
