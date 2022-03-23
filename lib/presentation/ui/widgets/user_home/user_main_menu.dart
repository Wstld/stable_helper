import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class UserMainMenu extends StatelessWidget {
  const UserMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        TextButton(
            onPressed:
                Get.find<HomeRootController>().userData.value?.stablesId != null
                    ? () {
                        Get.back();
                        Get.toNamed(Pages.myHorses.routeName);
                      }
                    : () => {},
            child: Opacity(
                opacity:
                    Get.find<HomeRootController>().userData.value?.stablesId !=
                            null
                        ? 1
                        : 0.6,
                child: const Text(
                  myHorsesBtnTxt,
                ))),
        TextButton(
            onPressed: () {
              Get.back();
              Get.toNamed(Pages.userProfileSettings.routeName);
            },
            child: const Text(profileSettingsBtnTxt)),
        TextButton(
            onPressed: () => Get.find<AuthController>().logout(),
            child: const Text(logoutBtnTxt))
      ]),
    );
  }
}
