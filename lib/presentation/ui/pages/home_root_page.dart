import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home_container.dart';

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
        drawer: Drawer(
          child: Column(children: [
            ElevatedButton(
                onPressed: () => Get.find<AuthController>().logout(),
                child: const Text(logoutBtnTxt))
          ]),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: pagePadding,
          child: GetBuilder<HomeRootController>(
            init: HomeRootController(Get.find(), Get.find()),
            builder: (controller) => controller.obx(
              (userData) => const UserHomeContainer(),
              onEmpty: const Text('Show on boarding'),
            ),
          ),
        ),
      ),
    );
  }
}
