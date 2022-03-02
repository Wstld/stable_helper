import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/string_const.dart';

class LoginController extends GetxController {
  LoginController();

  final TextEditingController emailInputTextController =
      TextEditingController();
  final TextEditingController passwordInputTextController =
      TextEditingController();

  RxString emaiInput = ''.obs;
  RxnString emailErrorTxt = RxnString();

  RxString passwordInput = ''.obs;

  @override
  void onInit() {
    debounce(emaiInput, validateEmail, time: const Duration(milliseconds: 500));
    super.onInit();
  }

  bool validateEmail(String input) {
    final RegExp regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(input)) {
      emailErrorTxt.value = emailErrorMsg;
      return false;
    } else {
      emailErrorTxt.value = null;
      log('OK');
      return true;
    }
  }

  void submit() async {
    if (!validateEmail(emaiInput.value)) {
      Get.snackbar(emailErrorMsg, '',
          snackPosition: SnackPosition.TOP, snackStyle: SnackStyle.FLOATING);
    } else if (passwordInput.isEmpty) {
      Get.snackbar(passwordErrorMsg, '',
          snackPosition: SnackPosition.TOP, snackStyle: SnackStyle.FLOATING);
    } else {
      try {
        //login
      } catch (e) {
        //why?
      }
    }
  }
}
