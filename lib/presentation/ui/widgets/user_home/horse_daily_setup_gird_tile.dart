import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorseDailySetupGridTile extends StatelessWidget {
  HorseDailySetupGridTile(
      {Key? key,
      required bool isSelcted,
      required this.icon,
      required this.onTap})
      : super(key: key) {
    _isSelected.value = isSelcted;
  }
  final IconData icon;
  final RxBool _isSelected = RxBool(false);
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Obx(
          () => Material(
            elevation: _isSelected.value ? 10 : 2,
            color: _isSelected.value
                ? const Color.fromARGB(255, 196, 221, 196)
                : const Color.fromARGB(255, 233, 233, 233),
            child: GridTile(
                child: Icon(
              icon,
              color: _isSelected.value ? Colors.green : Colors.black,
              size: 70,
            )),
          ),
        ));
  }
}
