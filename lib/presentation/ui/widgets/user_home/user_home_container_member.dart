import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/presentation/ui/widgets/carousel_with_indicator.dart';

class UserHomeContainer extends StatelessWidget {
  const UserHomeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat format = DateFormat('EEEE d MMMM');
    String dateString = format.format(DateTime.now());

    List<StableWork> list = [
      StableWork(day: Days.monday, time: '13.00', displayName: 'insläpp'),
      StableWork(day: Days.monday, time: '13.00', displayName: 'utsläpp'),
      StableWork(day: Days.monday, time: '13.00', displayName: 'hö'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dateString,
          textAlign: TextAlign.center,
        ),
        verticalSpaceLarge,
        CarouselWithIndicator(
          list: list,
        ),
      ],
    );
  }
}
