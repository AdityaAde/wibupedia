part of 'detail_anime_cubit.dart';

@freezed
class DetailAnimeState with _$DetailAnimeState {
  const factory DetailAnimeState.initial() = _Initial;
  const factory DetailAnimeState.loading() = _Loading;
  const factory DetailAnimeState.success(AnimeModels anime) = _Success;
  const factory DetailAnimeState.error(String err) = _Error;
}
