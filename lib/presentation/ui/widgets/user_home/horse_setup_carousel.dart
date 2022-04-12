import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/daily_horse_setup_controller.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class HorseSetupCarousel extends StatelessWidget {
  const HorseSetupCarousel(
      {Key? key,
      required this.stableChores,
      required this.carouselIndex,
      required this.horseList})
      : super(key: key);
  final List<StableChore> stableChores;
  final List<Horse> horseList;

  final RxInt carouselIndex;

  @override
  Widget build(BuildContext context) {
    final List<Horse> horseList = Get.find<HomeRootController>().horseList;
    return Obx(
      () => Expanded(
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: ShColors.lightBlue,
            border: Border(top: BorderSide(width: 0.2)),
          ),
          child: CarouselSlider.builder(
            itemCount: stableChores.length,
            itemBuilder: (context, pageIndex, index) {
              if (stableChores[pageIndex] is Stableing ||
                  stableChores[pageIndex] is TurnOut) {
                return GetX<DailyHorseSetupController>(
                    init: DailyHorseSetupController(Get.find<FirestoreRepo>(),
                        Get.find<HomeRootController>(),
                        chore: stableChores[pageIndex]),
                    tag: pageIndex.toString(),
                    builder: (_ctrl) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              horseList[_ctrl.horseIndex.value]
                                  .name
                                  .capitalized,
                              style: Get.theme.textTheme.titleMedium,
                            ),
                            verticalSpaceSmall,
                            GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: _ctrl.optionsList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        mainAxisExtent: 95),
                                itemBuilder: (context, index) => Obx(
                                      () => _ctrl.optionsList[index],
                                    )),
                            if (horseList.isEmpty) verticalSpaceLarge,
                            if (horseList.length > 1)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: _ctrl.horseIndex.value > 0
                                          ? () => _ctrl.horseIndex.value -= 1
                                          : () => {},
                                      icon: Icon(
                                        Icons.chevron_left,
                                        color: _ctrl.horseIndex.value > 0
                                            ? Colors.black
                                            : Colors.grey,
                                      )),
                                  const Text('Swap horse'),
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: _ctrl.horseIndex.value <
                                              horseList.length - 1
                                          ? () => _ctrl.horseIndex.value += 1
                                          : () => {},
                                      icon: Icon(
                                        Icons.chevron_right,
                                        color: _ctrl.horseIndex.value <
                                                horseList.length - 1
                                            ? Colors.black
                                            : Colors.grey,
                                      )),
                                ],
                              ),
                          ],
                        ),
                      );
                    });
              } else {
                return Container();
              }
            },
            options: CarouselOptions(
              initialPage: carouselIndex.value,
              aspectRatio: 1 / 1.2,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              scrollPhysics: const NeverScrollableScrollPhysics(),
            ),
            carouselController:
                Get.find<HomeRootController>().horseSetupcarouselController,
          ),
        ),
      ),
    );
  }
}
