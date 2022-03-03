import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:stable_helper/core/theme/ui_helper.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';

class HomeRootPage extends GetView {
  const HomeRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              padding: pagePadding,
              child: GetBuilder<AuthController>(
                  builder: ((controller) => ElevatedButton(
                      onPressed: () => controller.logout(),
                      child: const Text('logout')))))),
    );
  }
}
