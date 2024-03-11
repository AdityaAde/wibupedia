part of 'genre_anime_cubit.dart';

@freezed
class GenreAnimeState with _$GenreAnimeState {
  const factory GenreAnimeState.initial() = _Initial;
  const factory GenreAnimeState.loading() = _Loading;
  const factory GenreAnimeState.genres(List<String> genres) = _Genres;
  const factory GenreAnimeState.success(List<GenreModels> genres) = _Success;
  const factory GenreAnimeState.error(String err) = _Error;
}
