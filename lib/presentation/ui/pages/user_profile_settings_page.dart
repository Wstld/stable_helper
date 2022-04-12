import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/user_profile_settings_controller.dart';
import 'package:stable_helper/presentation/ui/widgets/sh_appbar.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/user_main_menu.dart';

class UserProfileSettingsPage extends StatelessWidget {
  const UserProfileSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ShColors.background,
      appBar: const ShAppBar(showBackBtn: true),
      drawer: const UserMainMenu(),
      body: GetBuilder<UserProfileSettingsController>(
          init: UserProfileSettingsController(Get.find<FirestoreRepo>()),
          builder: (_ctrl) {
            return Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpaceMedium,
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        onChanged: (value) => _ctrl.firstName.value = value,
                        controller: _ctrl.firstNameInputController,
                        decoration: const InputDecoration(
                          hintText: firstNameHint,
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceRegular,
                  Material(
                    borderRadius: BorderRadius.circular(5),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        onChanged: (value) => _ctrl.lastName.value = value,
                        controller: _ctrl.lastNameInputController,
                        decoration: const InputDecoration(
                          hintText: lastNameHint,
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceRegular,
                  Material(
                    borderRadius: BorderRadius.circular(9),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        onChanged: (value) => _ctrl.phoneNumber.value = value,
                        controller: _ctrl.phoneNumberInputController,
                        decoration: const InputDecoration(
                          hintText: phoneNumberHint,
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  ElevatedButton(
                      onPressed: () {
                        _ctrl.updateUserInfo();
                        Get.back();
                      },
                      child: const Text(saveChanges))
                ],
              ),
            );
          }),
      bottomSheet: Container(
        color: ShColors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Get.find<UserProfileSettingsController>()
                    .removeUserFromCurrentStables(),
                child: Text(
                  removeMeFromStableTxt,
                  style: Get.textTheme.bodyLarge!.copyWith(color: Colors.black),
                )),
          ],
        ),
      ),
    ));
  }
}
