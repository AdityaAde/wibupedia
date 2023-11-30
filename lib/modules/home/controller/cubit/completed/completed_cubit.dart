import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/injector.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/repositories.dart';

part 'completed_cubit.freezed.dart';
part 'completed_state.dart';

class CompletedCubit extends Cubit<CompletedState> {
  AnimeRepository _animeRepository;

  factory CompletedCubit.create() =>
      CompletedCubit(getIt.get())..getCompletedAnime(page: '1');

  CompletedCubit(this._animeRepository) : super(const CompletedState.initial());

  void getCompletedAnime({String? page}) async {
    emit(const CompletedState.loading());
    final result = await _animeRepository.completedAnime(page: page);
    result.fold(
      (l) => emit(CompletedState.error(l.toString())),
      (r) => emit(CompletedState.success(r)),
    );
  }
}
