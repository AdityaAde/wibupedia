part of 'bookmakrs_cubit.dart';

@freezed
class BookmakrsState with _$BookmakrsState {
  const factory BookmakrsState.initial() = _Initial;
  const factory BookmakrsState.loading() = _Loading;
  const factory BookmakrsState.success(List<BookmarksModels> bookmarks) =
      _Success;
  const factory BookmakrsState.addBookmarks() = _AddBookmarks;
  const factory BookmakrsState.error(String err) = _Error;
}
