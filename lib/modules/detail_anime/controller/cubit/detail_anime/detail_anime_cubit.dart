import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/injector.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/repositories.dart';

part 'detail_anime_cubit.freezed.dart';
part 'detail_anime_state.dart';

class DetailAnimeCubit extends Cubit<DetailAnimeState> {
  AnimeRepository _animeRepository;

  factory DetailAnimeCubit.create(String anime) =>
      DetailAnimeCubit(getIt.get())..getDetailAnime(anime);

  DetailAnimeCubit(this._animeRepository)
      : super(const DetailAnimeState.initial());

  void getDetailAnime(String anime) async {
    emit(const DetailAnimeState.loading());
    final result = await _animeRepository.detailAnime(anime);
    result.fold(
      (l) => emit(DetailAnimeState.error(l.toString())),
      (r) => emit(DetailAnimeState.success(r)),
    );
  }
}
