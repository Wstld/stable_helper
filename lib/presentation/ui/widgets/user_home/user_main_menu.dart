import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class UserMainMenu extends StatelessWidget {
  const UserMainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ShColors.background,
      child: Column(children: [
        Container(
          height: 250,
          color: ShColors.darkBlue,
          alignment: Alignment.center,
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              'lib/core/assets/MainIcon.png',
              height: 200,
            ),
          ),
        ),
        verticalSpaceLarge,
        Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.start,
          children: [
            TextButton(
                onPressed:
                    Get.find<HomeRootController>().userData.value?.stablesId !=
                            null
                        ? () {
                            Get.back();
                            Get.toNamed(Pages.myHorses.routeName);
                          }
                        : () => {},
                child: Opacity(
                  opacity: Get.find<HomeRootController>()
                              .userData
                              .value
                              ?.stablesId !=
                          null
                      ? 1
                      : 0.6,
                  child: Text(
                    myHorsesBtnTxt,
                    style: Get.textTheme.titleLarge!.copyWith(
                      color: ShColors.darkPink,
                    ),
                  ),
                )),
            verticalSpaceMedium,
            TextButton(
                onPressed: () {
                  //Get.back() to close main menu.
                  Get.back();
                  Get.toNamed(Pages.userProfileSettings.routeName);
                },
                child: Text(
                  profileSettingsBtnTxt,
                  style: Get.textTheme.titleLarge!.copyWith(
                    color: ShColors.darkPink,
                  ),
                )),
            verticalSpaceMedium,
            TextButton(
                onPressed: () => Get.find<AuthController>().logout(),
                child: Text(
                  logoutBtnTxt,
                  style: Get.textTheme.titleLarge!.copyWith(
                    color: ShColors.darkPink,
                  ),
                )),
          ],
        ),
      ]),
    );
  }
}
