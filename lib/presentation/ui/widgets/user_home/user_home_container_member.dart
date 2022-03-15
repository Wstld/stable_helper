import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:intl/intl.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/ui/widgets/carousel_with_indicator.dart';

class UserHomeContainerMember extends GetWidget<HomeRootController> {
  const UserHomeContainerMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat format = DateFormat('EEEE d MMMM');
    String dateString = format.format(DateTime.now());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dateString,
          textAlign: TextAlign.center,
        ),
        verticalSpaceLarge,
        CarouselWithIndicator(
          list: controller.schedule,
        ),
      ],
    );
  }
}
