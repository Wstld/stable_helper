import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/theme/stables_icon_icons.dart';
import 'package:stable_helper/data/models/models.dart';

class ChoreDetailsTile extends StatelessWidget {
  const ChoreDetailsTile({
    Key? key,
    required this.title,
    required this.cover,
    required this.feed,
    required this.stableOrTurnOut,
    required this.protectionSetup,
    required this.type,
    required this.ownerId,
  }) : super(key: key);
  final StableChore type;
  final String title;
  final HorseProtectionSetup protectionSetup;
  final HorseCoverSetup cover;
  final bool stableOrTurnOut;
  final bool feed;
  final String ownerId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log(ownerId),
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
                width: Get.width,
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: getIcons(),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(5)))),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              height: 20,
              transform:
                  Transform.translate(offset: const Offset(0, -10)).transform,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Text(
                title,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getIcons() {
    List<Widget> list = [];
    if (type is Stableing) {
      if (stableOrTurnOut) {
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.putInside,
              size: 70,
            )));
      } else {
        const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.putOutside,
              size: 70,
            ));
      }
    } else if (type is TurnOut) {
      if (stableOrTurnOut) {
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.putOutside,
              size: 70,
            )));
      } else {
        const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.putInside,
              size: 70,
            ));
      }
    }

    if (feed) {
      if (feed) {
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              Icons.food_bank_outlined,
              size: 70,
            )));
      }
    }

    switch (cover) {
      case HorseCoverSetup.none:
        break;
      case HorseCoverSetup.summer:
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.coverSummer,
              size: 70,
            )));
        break;

      case HorseCoverSetup.winter:
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.coverWinter,
              size: 70,
            )));
        break;
    }
    switch (protectionSetup) {
      case HorseProtectionSetup.none:
        break;
      case HorseProtectionSetup.back:
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.protectionBack,
              size: 70,
            )));
        break;
      case HorseProtectionSetup.front:
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.protectionFront,
              size: 70,
            )));
        break;
      case HorseProtectionSetup.both:
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.protectionBack,
              size: 70,
            )));
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.protectionFront,
              size: 70,
            )));
        break;
    }

    return list;
  }
}
