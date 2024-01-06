import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

class AuthenticationService {
  User? user;
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  void setUserProfile() {
    users.doc(user?.uid).set({
      'uid': user?.uid,
      'name': user?.displayName,
      'email': user?.email,
      'avatar': user?.photoURL,
    });
  }

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

      final UserCredential userCredential =
          await auth.signInWithCredential(credential);

      user = userCredential.user;
    }

    setUserProfile();

    return user;
  }

  Future<User?> signInWithTwitter() async {
    final authSecret = await FirebaseFirestore.instance
        .collection('authkey-sosmed')
        .doc('s1s0sHel8cFWErnSsDuQ')
        .get();

    final result = authSecret;
    if (result.exists) {
      final data = result.data() as Map<String, dynamic>;
      final twitterLogin = TwitterLogin(
        apiKey: data['apikey'],
        apiSecretKey: data['api_secret_key'],
        redirectURI: 'wibupedia://',
      );

      final authResult = await twitterLogin.login();

      final twitterAuthCredential = TwitterAuthProvider.credential(
        accessToken: authResult.authToken!,
        secret: authResult.authTokenSecret!,
      );

      final UserCredential userCredential =
          await auth.signInWithCredential(twitterAuthCredential);

      user = userCredential.user;
    }

    setUserProfile();

    return user;
  }

  Future<User?> signUpWithEmail(String email, String password) async {
    final UserCredential userCredential = await auth
        .createUserWithEmailAndPassword(email: email, password: password);
    user = userCredential.user;

    setUserProfile();

    return user;
  }

  Future<User?> signInWithEmail(String email, String password) async {
    final UserCredential userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    user = userCredential.user;

    setUserProfile();

    return user;
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
