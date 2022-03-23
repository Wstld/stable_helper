import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/presentation/controller/add_horse_controller.dart';

class AddHorseSetupGridTile extends GetView<AddHorseController> {
  const AddHorseSetupGridTile({
    Key? key,
    this.coverSetup,
    this.protection,
    this.concentrateFeed,
    this.position,
    required this.icon,
    required this.title,
  })  : assert(coverSetup != null ||
            protection != null ||
            concentrateFeed != null),
        super(key: key);

  final String title;
  final IconData icon;
  final HorsePosition? position;
  final HorseProtectionSetup? protection;
  final HorseCoverSetup? coverSetup;
  final HorseConcentrateFeed? concentrateFeed;

  @override
  Widget build(BuildContext context) {
    final _cover = position == HorsePosition.inside
        ? controller.coverInside
        : controller.coverOutside;
    final _protection = position == HorsePosition.inside
        ? controller.protectionInside
        : controller.portectionOutside;
    return GestureDetector(
      onTap: () => controller.updateHorseSetup(
          position: position,
          protection: protection,
          cover: coverSetup,
          concentrateFeed: concentrateFeed),
      child: GridTile(
        child: Container(
          color: Colors.amber,
          child: Column(
            children: [
              Obx(() => Icon(icon,
                  color: coverSetup == _cover.value ||
                          protection == _protection.value ||
                          concentrateFeed ==
                                  controller.timeForConcentrate.value &&
                              controller.timeForConcentrate.value !=
                                  HorseConcentrateFeed.none
                      ? Colors.green
                      : Colors.black)),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
