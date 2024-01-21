import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/component.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/bookmarks_repositories.dart';

part 'bookmakrs_state.dart';
part 'bookmakrs_cubit.freezed.dart';

class BookmakrsCubit extends Cubit<BookmakrsState> {
  BookmarksRepositories _bookmarksRepositories;

  factory BookmakrsCubit.create() =>
      BookmakrsCubit(getIt.get())..getBookmarks();

  BookmakrsCubit(this._bookmarksRepositories)
      : super(const BookmakrsState.initial());

  void addBookmarks(BookmarksModels anime) async {
    emit(const BookmakrsState.loading());
    final result = await _bookmarksRepositories.bookmakrsAnime(anime);
    result.fold(
      (l) => emit(BookmakrsState.error(l.toString())),
      (r) => emit(const BookmakrsState.addBookmarks()),
    );
  }

  void getBookmarks() async {
    emit(const BookmakrsState.loading());
    final result = await _bookmarksRepositories.getBookmarks();
    result.fold(
      (l) => emit(BookmakrsState.error(l.toString())),
      (r) => emit(BookmakrsState.success(r)),
    );
  }
}
