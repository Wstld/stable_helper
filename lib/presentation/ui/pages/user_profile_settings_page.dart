import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/user_profile_settings_controller.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/user_main_menu.dart';

class UserProfileSettingsPage extends StatelessWidget {
  const UserProfileSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Get.back(),
        ),
        actions: [
          Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu))),
        ],
      ),
      drawer: const UserMainMenu(),
      body: GetBuilder<UserProfileSettingsController>(
          init: UserProfileSettingsController(Get.find<FirestoreRepo>()),
          builder: (_ctrl) {
            return Container(
              padding: pagePadding,
              color: Colors.amber,
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => _ctrl.firstName.value = value,
                    controller: _ctrl.firstNameInputController,
                    decoration: const InputDecoration(hintText: firstNameHint),
                  ),
                  TextField(
                    onChanged: (value) => _ctrl.lastName.value = value,
                    controller: _ctrl.lastNameInputController,
                    decoration: const InputDecoration(hintText: lastNameHint),
                  ),
                  TextField(
                    onChanged: (value) => _ctrl.phoneNumber.value = value,
                    controller: _ctrl.phoneNumberInputController,
                    decoration:
                        const InputDecoration(hintText: phoneNumberHint),
                  ),
                  verticalSpaceExtraLarge,
                  ElevatedButton(
                      onPressed: () {
                        _ctrl.updateUserInfo();
                        Get.back();
                      },
                      child: const Text('Save'))
                ],
              ),
            );
          }),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () => Get.find<UserProfileSettingsController>()
                  .removeUserFromCurrentStables(),
              child: const Text('Remove me from current stable')),
        ],
      ),
    ));
  }
}
