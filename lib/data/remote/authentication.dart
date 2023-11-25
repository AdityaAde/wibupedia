import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

class AuthenticationService {
  User? user;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: ['https://www.googleapis.com/auth/drive'],
    );

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
        } else if (e.code == 'invalid-credential') {}
      } catch (e) {
        debugPrint('Error Authentication $e');
      }
    }

    return user;
  }

  Future<User?> signInWithTwitter() async {
    /// TODO: Migrate apikey twitter to firestore database
    final twitterLogin = TwitterLogin(
      apiKey: 'd7730rTBbHWk2L4rls10wL9Wi',
      apiSecretKey: 'IcV8ulnA4SEUzo4TfCMbBSwSeSjzD9OPK4feAwJixogO4mKMmC',
      redirectURI: 'wibupedia://',
    );

    final authResult = await twitterLogin.login();

    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: authResult.authToken!,
      secret: authResult.authTokenSecret!,
    );

    try {
      final UserCredential userCredential =
          await auth.signInWithCredential(twitterAuthCredential);

      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
      } else if (e.code == 'invalid-credential') {}
    } catch (e) {
      debugPrint('Error Authentication $e');
    }

    return user;
  }

  Future<User?> signUpWithEmail(String email, String password) async {
    try {
      final UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password);

      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
      } else if (e.code == 'invalid-credential') {}
    } catch (e) {
      debugPrint('Error Authentication $e');
    }

    return user;
  }

  Future<User?> signInWithEmail(String email, String password) async {
    try {
      final UserCredential userCredential = await auth
          .signInWithEmailAndPassword(email: email, password: password);

      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
      } else if (e.code == 'invalid-credential') {}
    } catch (e) {
      debugPrint('Error Authentication $e');
    }

    return user;
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
