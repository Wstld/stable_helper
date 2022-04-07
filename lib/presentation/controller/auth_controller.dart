import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';

class AuthController extends GetxController {
  AuthController(this._authRepo);
  final AuthRepo _authRepo;
  Rxn<User> user = Rxn<User>();

  @override
  void onInit() {
    //bind to user changes
    _authRepo.firebaseAuth.authStateChanges().listen((event) async {
      user.value = event;
      log('userchanged: ${event.toString()}');
    });

    user.value = _authRepo.firebaseAuth.currentUser;
    super.onInit();
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await _authRepo.firebaseLogin(email, password);
      Get.offAllNamed(Pages.home.routeName);
    } catch (e) {
      Get.snackbar(loginErrorMsg, '');
    }
  }

  void logout() {
    _authRepo.firebaseSignout();
    Get.offAllNamed(Pages.login.routeName);
  }

  Future<void> createUser(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required UserType userType}) async {
    try {
      await _authRepo.firebaseCreateUser(
          email, password, firstName, lastName, userType);
      Get.offAllNamed(Pages.home.routeName);
    } catch (e) {
      Get.snackbar(e.toString(), '');
    }
  }
}
