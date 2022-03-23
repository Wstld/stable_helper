import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/theme/themes.dart';
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
      body: Container(
        padding: pagePadding,
        color: Colors.amber,
      ),
    ));
  }
}
