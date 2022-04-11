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
            type: MaterialType.button,
            color: _isSelected.value
                ? const Color.fromARGB(255, 225, 255, 222)
                : const Color.fromARGB(255, 242, 255, 251),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: _isSelected.value
                          ? const Color.fromARGB(255, 118, 118, 118)
                          : const Color.fromARGB(255, 174, 174, 174),
                      width: 1),
                  gradient: _isSelected.value
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
              child: GridTile(
                  child: Icon(
                icon,
                color: _isSelected.value
                    ? const Color.fromARGB(255, 21, 156, 23)
                    : const Color.fromARGB(255, 0, 0, 0),
                size: 70,
              )),
            ),
          ),
        ));
  }
}
