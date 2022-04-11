import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/ui_helper.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/controller/my_horses_page_controller.dart';
import 'package:stable_helper/presentation/ui/ui.dart';
import 'package:stable_helper/presentation/ui/widgets/sh_appbar.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/horse_list_tile.dart';

class MyHorsesPage extends StatelessWidget {
  const MyHorsesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ShAppBar(showBackBtn: true),
        drawer: const UserMainMenu(),
        body: GetX<MyHorsesPageController>(
            init: MyHorsesPageController(
              Get.find<FirestoreRepo>(),
            ),
            builder: (controller) {
              List<Horse> listOfHorses =
                  Get.find<HomeRootController>().horseList;
              return Column(
                children: [
                  verticalSpaceMedium,
                  ListView.separated(
                    separatorBuilder: ((context, index) => verticalSpaceSmall),
                    shrinkWrap: true,
                    itemCount: listOfHorses.length,
                    itemBuilder: (context, index) {
                      return HorseListTile(
                          horseId: listOfHorses[index].id,
                          name: listOfHorses[index].name);
                    },
                  ),
                ],
              );
            }),
        floatingActionButton: FloatingActionButton.large(
          backgroundColor: ShColors.darkPink,
          onPressed: (() => Get.toNamed(Pages.addHorse.routeName)),
          child: const Icon(
            Icons.add,
            size: 70,
          ),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
      ),
    );
  }
}
