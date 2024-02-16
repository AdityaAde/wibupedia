import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_models.freezed.dart';
part 'genre_models.g.dart';

@freezed
class GenreModels with _$GenreModels {
  const factory GenreModels({
    String? genre,
    String? endpoint,
  }) = _GenreModels;

  factory GenreModels.fromJson(Map<String, dynamic> json) =>
      _$GenreModelsFromJson(json);
}
