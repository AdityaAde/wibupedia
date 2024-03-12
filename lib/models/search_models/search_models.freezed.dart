// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchAnimeModels _$SearchAnimeModelsFromJson(Map<String, dynamic> json) {
  return _SearchAnimeModels.fromJson(json);
}

/// @nodoc
mixin _$SearchAnimeModels {
  List<AnimeModels>? get search => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get studio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAnimeModelsCopyWith<SearchAnimeModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAnimeModelsCopyWith<$Res> {
  factory $SearchAnimeModelsCopyWith(
          SearchAnimeModels value, $Res Function(SearchAnimeModels) then) =
      _$SearchAnimeModelsCopyWithImpl<$Res, SearchAnimeModels>;
  @useResult
  $Res call(
      {List<AnimeModels>? search,
      String? title,
      String? thumb,
      String? link,
      String? studio});
}

/// @nodoc
class _$SearchAnimeModelsCopyWithImpl<$Res, $Val extends SearchAnimeModels>
    implements $SearchAnimeModelsCopyWith<$Res> {
  _$SearchAnimeModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? title = freezed,
    Object? thumb = freezed,
    Object? link = freezed,
    Object? studio = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      studio: freezed == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAnimeModelsImplCopyWith<$Res>
    implements $SearchAnimeModelsCopyWith<$Res> {
  factory _$$SearchAnimeModelsImplCopyWith(_$SearchAnimeModelsImpl value,
          $Res Function(_$SearchAnimeModelsImpl) then) =
      __$$SearchAnimeModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AnimeModels>? search,
      String? title,
      String? thumb,
      String? link,
      String? studio});
}

/// @nodoc
class __$$SearchAnimeModelsImplCopyWithImpl<$Res>
    extends _$SearchAnimeModelsCopyWithImpl<$Res, _$SearchAnimeModelsImpl>
    implements _$$SearchAnimeModelsImplCopyWith<$Res> {
  __$$SearchAnimeModelsImplCopyWithImpl(_$SearchAnimeModelsImpl _value,
      $Res Function(_$SearchAnimeModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? title = freezed,
    Object? thumb = freezed,
    Object? link = freezed,
    Object? studio = freezed,
  }) {
    return _then(_$SearchAnimeModelsImpl(
      search: freezed == search
          ? _value._search
          : search // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumb: freezed == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      studio: freezed == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchAnimeModelsImpl extends _SearchAnimeModels {
  const _$SearchAnimeModelsImpl(
      {final List<AnimeModels>? search,
      this.title,
      this.thumb,
      this.link,
      this.studio})
      : _search = search,
        super._();

  factory _$SearchAnimeModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchAnimeModelsImplFromJson(json);

  final List<AnimeModels>? _search;
  @override
  List<AnimeModels>? get search {
    final value = _search;
    if (value == null) return null;
    if (_search is EqualUnmodifiableListView) return _search;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? title;
  @override
  final String? thumb;
  @override
  final String? link;
  @override
  final String? studio;

  @override
  String toString() {
    return 'SearchAnimeModels(search: $search, title: $title, thumb: $thumb, link: $link, studio: $studio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAnimeModelsImpl &&
            const DeepCollectionEquality().equals(other._search, _search) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.studio, studio) || other.studio == studio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_search), title, thumb, link, studio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAnimeModelsImplCopyWith<_$SearchAnimeModelsImpl> get copyWith =>
      __$$SearchAnimeModelsImplCopyWithImpl<_$SearchAnimeModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchAnimeModelsImplToJson(
      this,
    );
  }
}

abstract class _SearchAnimeModels extends SearchAnimeModels {
  const factory _SearchAnimeModels(
      {final List<AnimeModels>? search,
      final String? title,
      final String? thumb,
      final String? link,
      final String? studio}) = _$SearchAnimeModelsImpl;
  const _SearchAnimeModels._() : super._();

  factory _SearchAnimeModels.fromJson(Map<String, dynamic> json) =
      _$SearchAnimeModelsImpl.fromJson;

  @override
  List<AnimeModels>? get search;
  @override
  String? get title;
  @override
  String? get thumb;
  @override
  String? get link;
  @override
  String? get studio;
  @override
  @JsonKey(ignore: true)
  _$$SearchAnimeModelsImplCopyWith<_$SearchAnimeModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
