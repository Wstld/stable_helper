import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/chores_carousel_with_indicator.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/horse_setup_carousel.dart';

class UserHomeContainerMember extends GetWidget<HomeRootController> {
  const UserHomeContainerMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              controller.dateString.value,
              textAlign: TextAlign.center,
            ),
            ChoresCarouselWithIndicator(
              list: controller.schedule,
              carouselIndex: controller.memberHomeCarouselIndex,
            ),
            verticalSpaceLarge,
            if (controller.horseList.isEmpty)
              ElevatedButton(
                  onPressed: () => Get.toNamed(Pages.addHorse.routeName),
                  child: const Text('add horse')),
            if (controller.horseList.isNotEmpty)
              HorseSetupCarousel(
                horseList: controller.horseList,
                stableChores: controller.schedule,
                carouselIndex: controller.memberHomeCarouselIndex,
              ),
          ],
        ));
  }
}
