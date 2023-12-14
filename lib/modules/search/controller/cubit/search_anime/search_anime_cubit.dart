import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/component.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/repositories.dart';

part 'search_anime_state.dart';
part 'search_anime_cubit.freezed.dart';

class SearchAnimeCubit extends Cubit<SearchAnimeState> {
  AnimeRepository _animeRepository;

  factory SearchAnimeCubit.create() => SearchAnimeCubit(getIt.get());

  SearchAnimeCubit(this._animeRepository)
      : super(const SearchAnimeState.initial());

  void searchAnime(String anime) async {
    emit(const SearchAnimeState.loading());
    final result = await _animeRepository.searchAnime(anime);
    result.fold(
      (l) => emit(SearchAnimeState.error(l.toString())),
      (r) => emit(SearchAnimeState.success(r)),
    );
  }
}
