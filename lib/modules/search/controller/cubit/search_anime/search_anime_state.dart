part of 'search_anime_cubit.dart';

@freezed
class SearchAnimeState with _$SearchAnimeState {
  const factory SearchAnimeState.initial() = _Initial;
  const factory SearchAnimeState.loading() = _Loading;
  const factory SearchAnimeState.success(SearchAnimeModels anime) = _Success;
  const factory SearchAnimeState.animeByGenre(List<SearchAnimeModels> animes) =
      _AnimeByGenre;
  const factory SearchAnimeState.error(String err) = _Error;
}
