import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';

class LoginController extends GetxController {
  LoginController(this._authController);

  final AuthController _authController;
  final TextEditingController emailInputTextController =
      TextEditingController();
  final TextEditingController passwordInputTextController =
      TextEditingController();
  final TextEditingController passwordSecondInputTextController =
      TextEditingController();

  final TextEditingController firstNameInputTextController =
      TextEditingController();
  final TextEditingController lastNameInputTextController =
      TextEditingController();

  RxString emaiInput = ''.obs;
  RxnString emailErrorTxt = RxnString();

  RxString passwordInput = ''.obs;
  RxString passwordSecondInput = ''.obs;
  RxnString passwordErrorTxt = RxnString();

  RxBool isOwner = false.obs;

  RxString firstNameInput = ''.obs;
  RxnString firstNameErrorTxt = RxnString();
  RxString lastNameInput = ''.obs;
  RxnString lastNameErrorTxt = RxnString();

  final Rx<LoginFormType> formType = LoginFormType.login.obs;

  @override
  void onInit() {
    initValidations();
    super.onInit();
  }

  void initValidations() {
    debounce(emaiInput, validateEmail, time: const Duration(milliseconds: 500));
    debounce(passwordInput, validatePassword,
        time: const Duration(milliseconds: 500));
    debounce(passwordSecondInput, validatePasswordEqual,
        time: const Duration(milliseconds: 500));
    debounce(firstNameInput, validateFirstName,
        time: const Duration(milliseconds: 500));
    debounce(lastNameInput, validateLasttName,
        time: const Duration(milliseconds: 500));
  }

  bool validateEmail(String input) {
    final RegExp regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(emaiInput.value)) {
      emailErrorTxt.value = emailErrorMsg;
      return false;
    } else {
      emailErrorTxt.value = null;
      return true;
    }
  }

  bool validatePassword(String input) {
    if (formType.value == LoginFormType.register) {
      final RegExp hasDigit = RegExp(r"[0-9]+.*[!,?]");
      if (!hasDigit.hasMatch(passwordInput.value)) {
        passwordErrorTxt.value = 'Must contain a digit and a special character';
        return false;
      }
      if (passwordInput.value.length < 8) {
        passwordErrorTxt.value = 'Password must be more than 8 characters';
        return false;
      } else {
        passwordErrorTxt.value = null;
        return true;
      }
    } else {
      return true;
    }
  }

  bool validatePasswordEqual(String input) {
    if (passwordInput.value == passwordSecondInput.value) {
      passwordErrorTxt.value = null;
      return true;
    } else {
      passwordErrorTxt.value = 'Passwords do not match';
      return false;
    }
  }

  bool validateFirstName(String input) {
    final bool validation = validateStringNotEmpty(input);
    if (validation) {
      firstNameErrorTxt.value = null;
    } else {
      firstNameErrorTxt.value = '''First name can't be empty ''';
    }

    return validation;
  }

  bool validateLasttName(String input) {
    final bool validation = validateStringNotEmpty(input);
    if (validation) {
      firstNameErrorTxt.value = null;
    } else {
      firstNameErrorTxt.value = '''Last name can't be empty ''';
    }

    return validation;
  }

  bool validateStringNotEmpty(String input) {
    return input.isNotEmpty;
  }

  bool validateRegistration() {
    return validateEmail(emaiInput.value) &&
        validatePassword(passwordInput.value) &&
        validatePasswordEqual(passwordInput.value) &&
        validateFirstName(firstNameInput.value) &&
        validateLasttName(lastNameInput.value);
  }

  void register() async {
    if (validateRegistration()) {
      _authController.createUser(
          email: emaiInput.value,
          firstName: firstNameInput.value,
          lastName: lastNameInput.value,
          password: passwordInput.value,
          userType: isOwner.value ? UserType.owner : UserType.user);
    }
  }

  void login() async {
    if (!validateEmail(emaiInput.value)) {
      Get.snackbar(emailErrorMsg, '',
          snackPosition: SnackPosition.TOP, snackStyle: SnackStyle.FLOATING);
    } else if (passwordInput.isEmpty) {
      Get.snackbar(passwordErrorMsg, '',
          snackPosition: SnackPosition.TOP, snackStyle: SnackStyle.FLOATING);
    } else {
      _authController.login(
        email: emaiInput.value,
        password: passwordInput.value,
      );
    }
  }
}
