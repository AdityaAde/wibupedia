// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ongoing_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OngoingModels _$OngoingModelsFromJson(Map<String, dynamic> json) {
  return _OngoingModels.fromJson(json);
}

/// @nodoc
mixin _$OngoingModels {
  List<AnimeModels>? get ongoing => throw _privateConstructorUsedError;
  String? get currentpage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OngoingModelsCopyWith<OngoingModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OngoingModelsCopyWith<$Res> {
  factory $OngoingModelsCopyWith(
          OngoingModels value, $Res Function(OngoingModels) then) =
      _$OngoingModelsCopyWithImpl<$Res, OngoingModels>;
  @useResult
  $Res call({List<AnimeModels>? ongoing, String? currentpage});
}

/// @nodoc
class _$OngoingModelsCopyWithImpl<$Res, $Val extends OngoingModels>
    implements $OngoingModelsCopyWith<$Res> {
  _$OngoingModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ongoing = freezed,
    Object? currentpage = freezed,
  }) {
    return _then(_value.copyWith(
      ongoing: freezed == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
      currentpage: freezed == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OngoingModelsImplCopyWith<$Res>
    implements $OngoingModelsCopyWith<$Res> {
  factory _$$OngoingModelsImplCopyWith(
          _$OngoingModelsImpl value, $Res Function(_$OngoingModelsImpl) then) =
      __$$OngoingModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnimeModels>? ongoing, String? currentpage});
}

/// @nodoc
class __$$OngoingModelsImplCopyWithImpl<$Res>
    extends _$OngoingModelsCopyWithImpl<$Res, _$OngoingModelsImpl>
    implements _$$OngoingModelsImplCopyWith<$Res> {
  __$$OngoingModelsImplCopyWithImpl(
      _$OngoingModelsImpl _value, $Res Function(_$OngoingModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ongoing = freezed,
    Object? currentpage = freezed,
  }) {
    return _then(_$OngoingModelsImpl(
      ongoing: freezed == ongoing
          ? _value._ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
      currentpage: freezed == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OngoingModelsImpl implements _OngoingModels {
  const _$OngoingModelsImpl(
      {final List<AnimeModels>? ongoing, this.currentpage})
      : _ongoing = ongoing;

  factory _$OngoingModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OngoingModelsImplFromJson(json);

  final List<AnimeModels>? _ongoing;
  @override
  List<AnimeModels>? get ongoing {
    final value = _ongoing;
    if (value == null) return null;
    if (_ongoing is EqualUnmodifiableListView) return _ongoing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? currentpage;

  @override
  String toString() {
    return 'OngoingModels(ongoing: $ongoing, currentpage: $currentpage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingModelsImpl &&
            const DeepCollectionEquality().equals(other._ongoing, _ongoing) &&
            (identical(other.currentpage, currentpage) ||
                other.currentpage == currentpage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ongoing), currentpage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingModelsImplCopyWith<_$OngoingModelsImpl> get copyWith =>
      __$$OngoingModelsImplCopyWithImpl<_$OngoingModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OngoingModelsImplToJson(
      this,
    );
  }
}

abstract class _OngoingModels implements OngoingModels {
  const factory _OngoingModels(
      {final List<AnimeModels>? ongoing,
      final String? currentpage}) = _$OngoingModelsImpl;

  factory _OngoingModels.fromJson(Map<String, dynamic> json) =
      _$OngoingModelsImpl.fromJson;

  @override
  List<AnimeModels>? get ongoing;
  @override
  String? get currentpage;
  @override
  @JsonKey(ignore: true)
  _$$OngoingModelsImplCopyWith<_$OngoingModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
