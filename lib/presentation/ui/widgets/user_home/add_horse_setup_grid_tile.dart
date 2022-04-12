import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/presentation/controller/add_or_update_horse_controller.dart';

class AddHorseSetupGridTile extends GetView<AddOrUpdateHorseController> {
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
    return GestureDetector(
      onTap: () => controller.updateHorseSetup(
          position: position,
          protection: protection,
          cover: coverSetup,
          concentrateFeed: concentrateFeed),
      child: Obx(() => Material(
            elevation: isSelected() ? 10 : 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: isSelected()
                      ? const Color.fromARGB(255, 225, 255, 222)
                      : const Color.fromARGB(255, 242, 255, 251),
                  border: Border.all(
                      color: isSelected()
                          ? const Color.fromARGB(255, 118, 118, 118)
                          : const Color.fromARGB(255, 174, 174, 174),
                      width: 1),
                  gradient: isSelected()
                      ? const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                              Color.fromARGB(255, 181, 253, 231),
                              Color.fromARGB(255, 210, 251, 243),
                              Color.fromARGB(92, 172, 255, 200),
                              Color.fromARGB(255, 210, 251, 243),
                              Color.fromARGB(255, 181, 253, 231),
                            ])
                      : null),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Icon(
                      icon,
                      size: icon == Icons.timer ? 50 : 80,
                      color: isSelected()
                          ? const Color.fromARGB(255, 21, 156, 23)
                          : const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  AutoSizeText(
                    title,
                    maxLines: 1,
                  )
                ],
              ),
            ),
          )),
    );
  }

  bool isSelected() {
    final _cover = position == HorsePosition.inside
        ? controller.coverInside
        : controller.coverOutside;
    final _protection = position == HorsePosition.inside
        ? controller.protectionInside
        : controller.portectionOutside;
    return coverSetup == _cover.value ||
        protection == _protection.value ||
        concentrateFeed == controller.timeForConcentrate.value &&
            controller.timeForConcentrate.value != HorseConcentrateFeed.none;
  }
}
