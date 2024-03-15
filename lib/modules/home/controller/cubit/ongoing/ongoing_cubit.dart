import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/injector.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/repositories.dart';

part 'ongoing_cubit.freezed.dart';
part 'ongoing_state.dart';

class OngoingCubit extends Cubit<OngoingState> {
  AnimeRepository _animeRepository;
  final _ongoingAnime = <AnimeModels>[];
  final int _limit = 25;
  bool _isFullyLoaded = false;

  bool get isFullyLoaded => _isFullyLoaded;
  List<AnimeModels> get ongoingAnime => _ongoingAnime;

  factory OngoingCubit.create() =>
      OngoingCubit(getIt.get())..getOngoingAnime(page: '1');

  OngoingCubit(this._animeRepository) : super(const OngoingState.initial());

  void getOngoingAnime({String? page}) async {
    emit(const OngoingState.loading());
    final result = await _animeRepository.ongoingAnime(page: page);
    result.fold(
      (l) => emit(OngoingState.error(l.toString())),
      (r) {
        _isFullyLoaded =
            (r.ongoing!.length % _limit) != 0 || r.ongoing!.isEmpty;
        _ongoingAnime.addAll(r.ongoing ?? []);
        emit(OngoingState.success(_ongoingAnime));
      },
    );
  }
}
