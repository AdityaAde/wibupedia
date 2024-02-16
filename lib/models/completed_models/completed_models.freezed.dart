// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletedModels _$CompletedModelsFromJson(Map<String, dynamic> json) {
  return _CompletedModels.fromJson(json);
}

/// @nodoc
mixin _$CompletedModels {
  List<AnimeModels>? get completed => throw _privateConstructorUsedError;
  String? get currentpage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedModelsCopyWith<CompletedModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedModelsCopyWith<$Res> {
  factory $CompletedModelsCopyWith(
          CompletedModels value, $Res Function(CompletedModels) then) =
      _$CompletedModelsCopyWithImpl<$Res, CompletedModels>;
  @useResult
  $Res call({List<AnimeModels>? completed, String? currentpage});
}

/// @nodoc
class _$CompletedModelsCopyWithImpl<$Res, $Val extends CompletedModels>
    implements $CompletedModelsCopyWith<$Res> {
  _$CompletedModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = freezed,
    Object? currentpage = freezed,
  }) {
    return _then(_value.copyWith(
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as List<AnimeModels>?,
      currentpage: freezed == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedModelsImplCopyWith<$Res>
    implements $CompletedModelsCopyWith<$Res> {
  factory _$$CompletedModelsImplCopyWith(_$CompletedModelsImpl value,
          $Res Function(_$CompletedModelsImpl) then) =
      __$$CompletedModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AnimeModels>? completed, String? currentpage});
}

/// @nodoc
class __$$CompletedModelsImplCopyWithImpl<$Res>
    extends _$CompletedModelsCopyWithImpl<$Res, _$CompletedModelsImpl>
    implements _$$CompletedModelsImplCopyWith<$Res> {
  __$$CompletedModelsImplCopyWithImpl(
      _$CompletedModelsImpl _value, $Res Function(_$CompletedModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = freezed,
    Object? currentpage = freezed,
  }) {
    return _then(_$CompletedModelsImpl(
      completed: freezed == completed
          ? _value._completed
          : completed // ignore: cast_nullable_to_non_nullable
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
class _$CompletedModelsImpl implements _CompletedModels {
  const _$CompletedModelsImpl(
      {final List<AnimeModels>? completed, this.currentpage})
      : _completed = completed;

  factory _$CompletedModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedModelsImplFromJson(json);

  final List<AnimeModels>? _completed;
  @override
  List<AnimeModels>? get completed {
    final value = _completed;
    if (value == null) return null;
    if (_completed is EqualUnmodifiableListView) return _completed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? currentpage;

  @override
  String toString() {
    return 'CompletedModels(completed: $completed, currentpage: $currentpage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedModelsImpl &&
            const DeepCollectionEquality()
                .equals(other._completed, _completed) &&
            (identical(other.currentpage, currentpage) ||
                other.currentpage == currentpage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_completed), currentpage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedModelsImplCopyWith<_$CompletedModelsImpl> get copyWith =>
      __$$CompletedModelsImplCopyWithImpl<_$CompletedModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedModelsImplToJson(
      this,
    );
  }
}

abstract class _CompletedModels implements CompletedModels {
  const factory _CompletedModels(
      {final List<AnimeModels>? completed,
      final String? currentpage}) = _$CompletedModelsImpl;

  factory _CompletedModels.fromJson(Map<String, dynamic> json) =
      _$CompletedModelsImpl.fromJson;

  @override
  List<AnimeModels>? get completed;
  @override
  String? get currentpage;
  @override
  @JsonKey(ignore: true)
  _$$CompletedModelsImplCopyWith<_$CompletedModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
