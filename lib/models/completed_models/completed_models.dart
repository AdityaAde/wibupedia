import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wibupedia/models/models.dart';

part 'completed_models.freezed.dart';
part 'completed_models.g.dart';

@freezed
class CompletedModels with _$CompletedModels {
  const factory CompletedModels({
    List<AnimeModels>? completed,
    String? currentpage,
  }) = _CompletedModels;

  factory CompletedModels.fromJson(Map<String, dynamic> json) =>
      _$CompletedModelsFromJson(json);
}
