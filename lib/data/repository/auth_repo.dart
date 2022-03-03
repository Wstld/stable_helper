import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  AuthRepo();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<User> firebaseLogin(String email, String password) async {
    //login
    try {
      final user = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (user.user != null) {
        return user.user!;
      } else {
        throw Exception('No user retrived');
      }
    } catch (e) {
      log('Error from authrep: $e');
      rethrow;
    }
  }

  Future<User> firebaseCreateUser(String email, String password) async {
    try {
      final user = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (user.user != null) {
        return user.user!;
      } else {
        throw Exception('''Could'nt create user''');
      }
    } catch (e) {
      rethrow;
    }
  }

  void firebaseSignout() {
    firebaseAuth.signOut();
  }
}
