import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/ui/ui.dart';
import 'package:stable_helper/presentation/ui/widgets/sh_appbar.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/chore_details_tile.dart';

class StableChoreDetailsPage extends GetView<HomeRootController> {
  const StableChoreDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ShAppBar(showBackBtn: true),
        drawer: const UserMainMenu(),
        body: GetBuilder<StableChoreDetailsController>(
            init: StableChoreDetailsController(
                Get.find(), Get.arguments['type'],
                stables: controller.stablesData.value!),
            builder: (_ctrl) {
              return _ctrl.obx((choreList) => Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: choreList!.length,
                          itemBuilder: (context, index) {
                            ChoreDetails choreDetails = choreList[index];
                            HorseSetup horseSetup = choreList[index].horseSetup;
                            return ChoreDetailsTile(
                              ownerId: choreDetails.ownerId,
                              title: choreDetails.name,
                              cover: horseSetup.cover,
                              feed: choreDetails.feed,
                              stableOrTurnOut:
                                  choreDetails.preformStabelingOrTurnOut,
                              protectionSetup: horseSetup.protection,
                              type: Get.arguments['type'],
                            );
                          })
                    ],
                  ));
            }),
      ),
    );
  }
}
