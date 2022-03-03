import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';

class AuthController extends GetxController {
  AuthController(this._authRepo);
  final AuthRepo _authRepo;
  Rxn<User> user = Rxn<User>();

  @override
  void onInit() {
    //bind to user chages
    _authRepo.firebaseAuth.authStateChanges().listen((event) {
      user.value = event;
      log('userchanged: ${event.toString()}');
    });
    super.onInit();
  }

  Future<void> login(String email, String password) async {
    try {
      await _authRepo.firebaseLogin(email, password);
      Get.toNamed(Pages.home.routeName);
    } catch (e) {
      Get.snackbar(e.toString(), '');
    }
  }

  void logout() {
    _authRepo.firebaseSignout();
  }
}
