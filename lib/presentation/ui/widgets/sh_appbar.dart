import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/theme/colors.dart';

class ShAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackBtn;
  const ShAppBar({Key? key, required this.showBackBtn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: 60,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.2)),
            color: ShColors.lightBlue,
          ),
          child: Row(
            mainAxisAlignment: showBackBtn
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.end,
            children: [
              if (showBackBtn)
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.chevron_left_rounded),
                  iconSize: 35,
                ),
              const Text('ESQY'),
              IconButton(
                  iconSize: 30,
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu_rounded))
            ],
          ),
        ),
        Row(
          mainAxisAlignment:
              showBackBtn ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(
                'lib/core/assets/MainIcon.png',
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(Get.width, 100);
}
