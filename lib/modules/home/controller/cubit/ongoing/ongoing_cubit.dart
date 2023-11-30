import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/injector.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/repositories.dart';

part 'ongoing_cubit.freezed.dart';
part 'ongoing_state.dart';

class OngoingCubit extends Cubit<OngoingState> {
  AnimeRepository _animeRepository;

  factory OngoingCubit.create() => OngoingCubit(getIt.get());

  OngoingCubit(this._animeRepository) : super(const OngoingState.initial());

  void getOngoingAnime({String? page}) async {
    emit(const OngoingState.loading());
    final result = await _animeRepository.ongoingAnime(page: page);
    result.fold(
      (l) => emit(OngoingState.error(l.toString())),
      (r) => emit(OngoingState.success(r)),
    );
  }
}
