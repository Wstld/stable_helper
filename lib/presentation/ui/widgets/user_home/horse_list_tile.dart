import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/stables_icon_icons.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/my_horses_page_controller.dart';

class HorseListTile extends StatelessWidget {
  const HorseListTile({
    Key? key,
    required this.horseId,
    required this.name,
  }) : super(key: key);
  final String name;
  final String horseId;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 80,
        color: ShColors.darkBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  StablesIcon.protectionNone,
                  size: 80,
                ),
                horizontalSpaceMedium,
                Text(
                  name.capitalized,
                  style: Get.textTheme.titleLarge,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () => Get.toNamed(Pages.addHorse.routeName,
                        arguments: {'id': horseId}),
                    icon: const Icon(Icons.edit)),
                IconButton(
                    onPressed: () {
                      Get.find<MyHorsesPageController>().deleteHorse(horseId);
                    },
                    icon: const Icon(Icons.delete)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
