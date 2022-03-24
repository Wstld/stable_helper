import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class UserProfileSettingsController extends GetxController {
  UserProfileSettingsController(this._firestoreRepo);
  final FirestoreRepo _firestoreRepo;
  final RxString firstName = RxString('');
  final RxString lastName = RxString('');
  final RxString phoneNumber = RxString('');
  final TextEditingController firstNameInputController =
      TextEditingController();
  final TextEditingController lastNameInputController = TextEditingController();
  final TextEditingController phoneNumberInputController =
      TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    setInitialValues();
    super.onInit();
  }

  void setInitialValues() {
    if (Get.find<HomeRootController>().userData.value != null) {
      final User userData = Get.find<HomeRootController>().userData.value!;
      firstName.value = userData.firstname;
      lastName.value = userData.lastname;
      phoneNumber.value = userData.phoneNumber ?? '';

      firstNameInputController.text = firstName.value;
      lastNameInputController.text = lastName.value;
      phoneNumberInputController.text = phoneNumber.value;
    }
  }

  void removeUserFromCurrentStables() {
    Get.defaultDialog(
        title: 'Are You Sure?',
        textConfirm: 'yes',
        textCancel: 'back',
        confirmTextColor: Colors.white,
        middleText: '''this can't be undone''',
        onConfirm: () {
          _firestoreRepo.removeUserFromCurrentStable(
              Get.find<HomeRootController>().userData.value!.userId);
          Get.closeAllSnackbars();
          Get.back();
        },
        onCancel: () => Get.closeAllSnackbars());
  }

  void updateUserInfo() {
    final User user = Get.find<HomeRootController>().userData.value!.copyWith(
          phoneNumber: phoneNumber.value,
          firstname: firstName.value,
          lastname: lastName.value,
        );
    _firestoreRepo.updateUserInfo(user, user.userId);
  }
}
