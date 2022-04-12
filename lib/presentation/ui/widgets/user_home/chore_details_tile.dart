import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/stables_icon_icons.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/contact_horse_owner_dialog.dart';

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
  final Color iconBackgroundColor = ShColors.lightBlue;
  @override
  Widget build(BuildContext context) {
    List<Widget> iconList = getIcons();
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => ContactHorseOwnerDialog(ownerId: ownerId),
      ),
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
                height: 100,
                width: Get.width,
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 15, bottom: 10),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => iconList[index]),
                    separatorBuilder: (context, index) => horizontalSpaceSmall,
                    itemCount: iconList.length),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(Radius.circular(5)))),
            Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
              height: 26,
              transform:
                  Transform.translate(offset: const Offset(0, -12)).transform,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Text(
                title,
                softWrap: true,
                textAlign: TextAlign.center,
                style: Get.textTheme.titleMedium,
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
        list.add(const Material(
            color: Colors.white,
            elevation: 5,
            child: Icon(
              StablesIcon.putOutside,
              size: 70,
            )));
      }
    } else if (type is TurnOut) {
      if (stableOrTurnOut) {
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.putOutside,
              size: 70,
            )));
      } else {
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.putInside,
              size: 70,
            )));
      }
    }

    if (feed) {
      if (feed) {
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              Icons.food_bank_outlined,
              size: 70,
            )));
      }
    }

    switch (cover) {
      case HorseCoverSetup.none:
        break;
      case HorseCoverSetup.summer:
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.coverSummer,
              size: 70,
            )));
        break;

      case HorseCoverSetup.winter:
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.coverWinter,
              size: 70,
            )));
        break;
    }
    switch (protectionSetup) {
      case HorseProtectionSetup.none:
        break;
      case HorseProtectionSetup.back:
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.protectionBack,
              size: 70,
            )));
        break;
      case HorseProtectionSetup.front:
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.protectionFront,
              size: 70,
            )));
        break;
      case HorseProtectionSetup.both:
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.protectionBack,
              size: 70,
            )));
        list.add(Material(
            color: iconBackgroundColor,
            elevation: 5,
            child: const Icon(
              StablesIcon.protectionFront,
              size: 70,
            )));
        break;
    }

    return list;
  }
}
