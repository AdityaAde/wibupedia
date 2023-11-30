import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'ongoing_models.freezed.dart';
part 'ongoing_models.g.dart';

@freezed
class OngoingModels with _$OngoingModels {
  const factory OngoingModels({
    List<AnimeModels>? ongoing,
    String? currentpage,
  }) = _OngoingModels;

  factory OngoingModels.fromJson(Map<String, dynamic> json) =>
      _$OngoingModelsFromJson(json);
}
