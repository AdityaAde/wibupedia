// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_anime_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailAnimeModels _$DetailAnimeModelsFromJson(Map<String, dynamic> json) {
  return _DetailAnimeModels.fromJson(json);
}

/// @nodoc
mixin _$DetailAnimeModels {
  AnimeModels? get animeDetail => throw _privateConstructorUsedError;
  List<EpisodeModels>? get episodeList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailAnimeModelsCopyWith<DetailAnimeModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAnimeModelsCopyWith<$Res> {
  factory $DetailAnimeModelsCopyWith(
          DetailAnimeModels value, $Res Function(DetailAnimeModels) then) =
      _$DetailAnimeModelsCopyWithImpl<$Res, DetailAnimeModels>;
  @useResult
  $Res call({AnimeModels? animeDetail, List<EpisodeModels>? episodeList});

  $AnimeModelsCopyWith<$Res>? get animeDetail;
}

/// @nodoc
class _$DetailAnimeModelsCopyWithImpl<$Res, $Val extends DetailAnimeModels>
    implements $DetailAnimeModelsCopyWith<$Res> {
  _$DetailAnimeModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeDetail = freezed,
    Object? episodeList = freezed,
  }) {
    return _then(_value.copyWith(
      animeDetail: freezed == animeDetail
          ? _value.animeDetail
          : animeDetail // ignore: cast_nullable_to_non_nullable
              as AnimeModels?,
      episodeList: freezed == episodeList
          ? _value.episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModels>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeModelsCopyWith<$Res>? get animeDetail {
    if (_value.animeDetail == null) {
      return null;
    }

    return $AnimeModelsCopyWith<$Res>(_value.animeDetail!, (value) {
      return _then(_value.copyWith(animeDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailAnimeModelsCopyWith<$Res>
    implements $DetailAnimeModelsCopyWith<$Res> {
  factory _$$_DetailAnimeModelsCopyWith(_$_DetailAnimeModels value,
          $Res Function(_$_DetailAnimeModels) then) =
      __$$_DetailAnimeModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimeModels? animeDetail, List<EpisodeModels>? episodeList});

  @override
  $AnimeModelsCopyWith<$Res>? get animeDetail;
}

/// @nodoc
class __$$_DetailAnimeModelsCopyWithImpl<$Res>
    extends _$DetailAnimeModelsCopyWithImpl<$Res, _$_DetailAnimeModels>
    implements _$$_DetailAnimeModelsCopyWith<$Res> {
  __$$_DetailAnimeModelsCopyWithImpl(
      _$_DetailAnimeModels _value, $Res Function(_$_DetailAnimeModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeDetail = freezed,
    Object? episodeList = freezed,
  }) {
    return _then(_$_DetailAnimeModels(
      animeDetail: freezed == animeDetail
          ? _value.animeDetail
          : animeDetail // ignore: cast_nullable_to_non_nullable
              as AnimeModels?,
      episodeList: freezed == episodeList
          ? _value._episodeList
          : episodeList // ignore: cast_nullable_to_non_nullable
              as List<EpisodeModels>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailAnimeModels extends _DetailAnimeModels {
  const _$_DetailAnimeModels(
      {this.animeDetail, final List<EpisodeModels>? episodeList})
      : _episodeList = episodeList,
        super._();

  factory _$_DetailAnimeModels.fromJson(Map<String, dynamic> json) =>
      _$$_DetailAnimeModelsFromJson(json);

  @override
  final AnimeModels? animeDetail;
  final List<EpisodeModels>? _episodeList;
  @override
  List<EpisodeModels>? get episodeList {
    final value = _episodeList;
    if (value == null) return null;
    if (_episodeList is EqualUnmodifiableListView) return _episodeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailAnimeModels(animeDetail: $animeDetail, episodeList: $episodeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailAnimeModels &&
            (identical(other.animeDetail, animeDetail) ||
                other.animeDetail == animeDetail) &&
            const DeepCollectionEquality()
                .equals(other._episodeList, _episodeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, animeDetail,
      const DeepCollectionEquality().hash(_episodeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailAnimeModelsCopyWith<_$_DetailAnimeModels> get copyWith =>
      __$$_DetailAnimeModelsCopyWithImpl<_$_DetailAnimeModels>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailAnimeModelsToJson(
      this,
    );
  }
}

abstract class _DetailAnimeModels extends DetailAnimeModels {
  const factory _DetailAnimeModels(
      {final AnimeModels? animeDetail,
      final List<EpisodeModels>? episodeList}) = _$_DetailAnimeModels;
  const _DetailAnimeModels._() : super._();

  factory _DetailAnimeModels.fromJson(Map<String, dynamic> json) =
      _$_DetailAnimeModels.fromJson;

  @override
  AnimeModels? get animeDetail;
  @override
  List<EpisodeModels>? get episodeList;
  @override
  @JsonKey(ignore: true)
  _$$_DetailAnimeModelsCopyWith<_$_DetailAnimeModels> get copyWith =>
      throw _privateConstructorUsedError;
}
