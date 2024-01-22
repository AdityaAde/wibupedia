import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../component/component.dart';
import '../../../../../models/models.dart';
import '../../../../../repositories/bookmarks_repositories.dart';
import '../../../../../widgets/widgets.dart';

part 'bookmakrs_cubit.freezed.dart';
part 'bookmakrs_state.dart';

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
    result.fold((l) => emit(BookmakrsState.error(l.toString())), (r) {
      if (r.isEmpty) {
        emit(const BookmakrsState.empty());
      } else {
        emit(BookmakrsState.success(r));
      }
    });
  }

  void deleteBookmarks(String docId) async {
    emit(const BookmakrsState.loading());
    final result = await _bookmarksRepositories.deleteBookmarks(docId);
    result.fold((l) => emit(BookmakrsState.error(l.toString())), (r) {
      if (r) {
        getBookmarks();
        ToastWidget.showToast('Berhasil menghapus anime');
      } else {
        emit(const BookmakrsState.error('Gagal menghapus bookmarks'));
      }
    });
  }
}
