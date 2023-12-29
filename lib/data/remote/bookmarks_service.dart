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
    });
  }
}
