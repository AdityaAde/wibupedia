import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../component/injector.dart';
import '../../../../../../models/models.dart';
import '../../../../../../repositories/repositories.dart';

part 'genre_anime_state.dart';
part 'genre_anime_cubit.freezed.dart';

class GenreAnimeCubit extends Cubit<GenreAnimeState> {
  AnimeRepository _animeRepository;

  factory GenreAnimeCubit.create() =>
      GenreAnimeCubit(getIt.get())..getGenresAnime();

  GenreAnimeCubit(this._animeRepository)
      : super(const GenreAnimeState.initial());

  void getGenresAnime() async {
    emit(const GenreAnimeState.loading());
    final result = await _animeRepository.genresAnime();
    result.fold(
      (l) => emit(GenreAnimeState.error(l.toString())),
      (r) => emit(GenreAnimeState.success(r)),
    );
  }
}
