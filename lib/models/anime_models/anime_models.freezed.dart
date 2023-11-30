// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimeModels _$AnimeModelsFromJson(Map<String, dynamic> json) {
  return _AnimeModels.fromJson(json);
}

/// @nodoc
mixin _$AnimeModels {
  String? get title => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String? get score => throw _privateConstructorUsedError;
  String? get totalEpisode => throw _privateConstructorUsedError;
  String? get updatedOn => throw _privateConstructorUsedError;
  String? get updatedDay => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeModelsCopyWith<AnimeModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeModelsCopyWith<$Res> {
  factory $AnimeModelsCopyWith(
          AnimeModels value, $Res Function(AnimeModels) then) =
      _$AnimeModelsCopyWithImpl<$Res, AnimeModels>;
  @useResult
  $Res call(
      {String? title,
      String? thumb,
      String? score,
      String? totalEpisode,
      String? updatedOn,
      String? updatedDay,
      String? endpoint});
}

/// @nodoc
class _$AnimeModelsCopyWithImpl<$Res, $Val extends AnimeModels>
    implements $AnimeModelsCopyWith<$Res> {
  _$AnimeModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? thumb = freezed,
    Object? score = freezed,
    Object? totalEpisode = freezed,
    Object? updatedOn = freezed,
    Object? updatedDay = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEpisode: freezed == totalEpisode
          ? _value.totalEpisode
          : totalEpisode // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDay: freezed == updatedDay
          ? _value.updatedDay
          : updatedDay // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeModelsCopyWith<$Res>
    implements $AnimeModelsCopyWith<$Res> {
  factory _$$_AnimeModelsCopyWith(
          _$_AnimeModels value, $Res Function(_$_AnimeModels) then) =
      __$$_AnimeModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? thumb,
      String? score,
      String? totalEpisode,
      String? updatedOn,
      String? updatedDay,
      String? endpoint});
}

/// @nodoc
class __$$_AnimeModelsCopyWithImpl<$Res>
    extends _$AnimeModelsCopyWithImpl<$Res, _$_AnimeModels>
    implements _$$_AnimeModelsCopyWith<$Res> {
  __$$_AnimeModelsCopyWithImpl(
      _$_AnimeModels _value, $Res Function(_$_AnimeModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? thumb = freezed,
    Object? score = freezed,
    Object? totalEpisode = freezed,
    Object? updatedOn = freezed,
    Object? updatedDay = freezed,
    Object? endpoint = freezed,
  }) {
    return _then(_$_AnimeModels(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEpisode: freezed == totalEpisode
          ? _value.totalEpisode
          : totalEpisode // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedDay: freezed == updatedDay
          ? _value.updatedDay
          : updatedDay // ignore: cast_nullable_to_non_nullable
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
class _$_AnimeModels implements _AnimeModels {
  const _$_AnimeModels(
      {this.title,
      this.thumb,
      this.score,
      this.totalEpisode,
      this.updatedOn,
      this.updatedDay,
      this.endpoint});

  factory _$_AnimeModels.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeModelsFromJson(json);

  @override
  final String? title;
  @override
  final String? thumb;
  @override
  final String? score;
  @override
  final String? totalEpisode;
  @override
  final String? updatedOn;
  @override
  final String? updatedDay;
  @override
  final String? endpoint;

  @override
  String toString() {
    return 'AnimeModels(title: $title, thumb: $thumb, score: $score, totalEpisode: $totalEpisode, updatedOn: $updatedOn, updatedDay: $updatedDay, endpoint: $endpoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeModels &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.totalEpisode, totalEpisode) ||
                other.totalEpisode == totalEpisode) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.updatedDay, updatedDay) ||
                other.updatedDay == updatedDay) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, thumb, score,
      totalEpisode, updatedOn, updatedDay, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeModelsCopyWith<_$_AnimeModels> get copyWith =>
      __$$_AnimeModelsCopyWithImpl<_$_AnimeModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeModelsToJson(
      this,
    );
  }
}

abstract class _AnimeModels implements AnimeModels {
  const factory _AnimeModels(
      {final String? title,
      final String? thumb,
      final String? score,
      final String? totalEpisode,
      final String? updatedOn,
      final String? updatedDay,
      final String? endpoint}) = _$_AnimeModels;

  factory _AnimeModels.fromJson(Map<String, dynamic> json) =
      _$_AnimeModels.fromJson;

  @override
  String? get title;
  @override
  String? get thumb;
  @override
  String? get score;
  @override
  String? get totalEpisode;
  @override
  String? get updatedOn;
  @override
  String? get updatedDay;
  @override
  String? get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeModelsCopyWith<_$_AnimeModels> get copyWith =>
      throw _privateConstructorUsedError;
}
