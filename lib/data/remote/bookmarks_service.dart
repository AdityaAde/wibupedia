import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/models.dart';

class BookmarksService {
  BookmarksService();
  factory BookmarksService.create() => BookmarksService();

  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> bookmarksAnime(BookmarksModels anime) async {
    users.doc(user?.uid).collection('bookmarks').add({
      'name': anime.name,
      'thumbnail': anime.thumbnail,
      'endpoint': anime.endpoint,
      'status': anime.status,
    });
  }

  Future<List<BookmarksModels>> getBookmarks() async {
    final List<BookmarksModels> bookmarks = [];
    final data = await users.doc(user?.uid).collection('bookmarks').get();

    for (var bookmark in data.docs) {
      var result = BookmarksModels.fromJson(bookmark.data())
          .copyWith(docId: bookmark.id);
      bookmarks.add(result);
    }
    return bookmarks;
  }

  Future<bool> deleteBookmarks(String docId) async {
    try {
      await users.doc(user?.uid).collection('bookmarks').doc(docId).delete();
      return true;
    } catch (_) {
      return false;
    }
  }
}
