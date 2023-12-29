import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmarks_models.freezed.dart';
part 'bookmarks_models.g.dart';

@freezed
class BookmarksModels with _$BookmarksModels {
  const factory BookmarksModels({
    String? name,
    String? thumbnail,
    String? endpoint,
  }) = _BookmarksModels;

  factory BookmarksModels.fromJson(Map<String, dynamic> json) =>
      _$BookmarksModelsFromJson(json);
}
