import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class AuthRepo {
  AuthRepo();

  auth.FirebaseAuth firebaseAuth = auth.FirebaseAuth.instance;

  Future<auth.User> firebaseLogin(
    String email,
    String password,
  ) async {
    //login
    try {
      auth.UserCredential user = await firebaseAuth.signInWithEmailAndPassword(
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

  Future<auth.User> firebaseCreateUser(String email, String password,
      String firstName, String lastName, UserType userType) async {
    try {
      final auth.UserCredential user = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (user.user != null) {
        final User userData = User(
            type: userType,
            userId: user.user!.uid,
            firstname: firstName,
            lastname: lastName,
            email: email);
        Get.find<FirestoreRepo>()
            .users
            .doc(user.user!.uid)
            .set(userData.toJson());
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
