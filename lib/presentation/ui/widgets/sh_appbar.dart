import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/theme/colors.dart';

class ShAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: Get.width,
          height: 60,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.2)),
            color: ShColors.lightBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('ESQY'),
              IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu))
            ],
          ),
        ),
        Image.asset(
          'lib/core/assets/MainIcon.png',
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(Get.width, 100);
}
