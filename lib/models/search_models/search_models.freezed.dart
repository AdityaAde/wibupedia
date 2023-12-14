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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchAnimeModels _$SearchAnimeModelsFromJson(Map<String, dynamic> json) {
  return _SearchAnimeModels.fromJson(json);
}

/// @nodoc
mixin _$SearchAnimeModels {
  List<AnimeModels>? get search => throw _privateConstructorUsedError;

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
  $Res call({List<AnimeModels>? search});
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
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAnimeModelsCopyWith<$Res>
    implements $SearchAnimeModelsCopyWith<$Res> {
  factory _$$_SearchAnimeModelsCopyWith(_$_SearchAnimeModels value,
          $Res Function(_$_SearchAnimeModels) then) =
      __$$_SearchAnimeModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnimeModels>? search});
}

/// @nodoc
class __$$_SearchAnimeModelsCopyWithImpl<$Res>
    extends _$SearchAnimeModelsCopyWithImpl<$Res, _$_SearchAnimeModels>
    implements _$$_SearchAnimeModelsCopyWith<$Res> {
  __$$_SearchAnimeModelsCopyWithImpl(
      _$_SearchAnimeModels _value, $Res Function(_$_SearchAnimeModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$_SearchAnimeModels(
      search: freezed == search
          ? _value._search
          : search // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchAnimeModels implements _SearchAnimeModels {
  const _$_SearchAnimeModels({final List<AnimeModels>? search})
      : _search = search;

  factory _$_SearchAnimeModels.fromJson(Map<String, dynamic> json) =>
      _$$_SearchAnimeModelsFromJson(json);

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
  String toString() {
    return 'SearchAnimeModels(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAnimeModels &&
            const DeepCollectionEquality().equals(other._search, _search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_search));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAnimeModelsCopyWith<_$_SearchAnimeModels> get copyWith =>
      __$$_SearchAnimeModelsCopyWithImpl<_$_SearchAnimeModels>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchAnimeModelsToJson(
      this,
    );
  }
}

abstract class _SearchAnimeModels implements SearchAnimeModels {
  const factory _SearchAnimeModels({final List<AnimeModels>? search}) =
      _$_SearchAnimeModels;

  factory _SearchAnimeModels.fromJson(Map<String, dynamic> json) =
      _$_SearchAnimeModels.fromJson;

  @override
  List<AnimeModels>? get search;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAnimeModelsCopyWith<_$_SearchAnimeModels> get copyWith =>
      throw _privateConstructorUsedError;
}
