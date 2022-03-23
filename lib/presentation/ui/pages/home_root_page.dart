import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/ui/ui.dart';

class HomeRootPage extends GetView {
  const HomeRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Builder(
                builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu))),
          ],
        ),
        drawer: const UserMainMenu(),
        body: Container(
          padding: pagePadding,
          child: GetBuilder<HomeRootController>(
            init: Get.put(HomeRootController(Get.find(), Get.find())),
            builder: (controller) => controller.obx(
              (userData) => userData!.stablesId == null
                  ? const UserHomeContainerNonMember()
                  : const UserHomeContainerMember(),
              onEmpty: const Text('Show on boarding'),
            ),
          ),
        ),
      ),
    );
  }
}
