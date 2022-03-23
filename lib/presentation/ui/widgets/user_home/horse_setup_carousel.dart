import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/daily_horse_setup_controller.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class HorseSetupCarousel extends GetView<HomeRootController> {
  HorseSetupCarousel({Key? key, required this.stableChores}) : super(key: key);
  final List<StableChore> stableChores;
  final RxInt horseIndex = RxInt(0);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CarouselSlider.builder(
        itemCount: stableChores.length,
        itemBuilder: (context, pageIndex, index) {
          if (stableChores[pageIndex] is Stableing ||
              stableChores[pageIndex] is TurnOut) {
            return GetX<DailyHorseSetupController>(
                init: DailyHorseSetupController(Get.find<FirestoreRepo>(),
                    horse: controller.horseList[horseIndex.value],
                    chore: stableChores[pageIndex]),
                tag: pageIndex.toString(),
                builder: (_ctrl) {
                  return Column(
                    children: [
                      Text(controller.horseList[horseIndex.value].name),
                      Expanded(
                        child: GridView.builder(
                            itemCount: _ctrl.optionsList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 110,
                            ),
                            itemBuilder: (context, index) => Obx(
                                  () => _ctrl.optionsList[index],
                                )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              iconSize: 40,
                              onPressed: horseIndex.value > 0
                                  ? () {
                                      horseIndex.value -= 1;
                                      _ctrl.setHorse(controller
                                          .horseList[horseIndex.value]);
                                    }
                                  : () => {},
                              icon: Icon(
                                Icons.chevron_left,
                                color: horseIndex.value > 0
                                    ? Colors.black
                                    : Colors.grey,
                              )),
                          const Text('Swap horse'),
                          IconButton(
                              iconSize: 40,
                              onPressed: horseIndex.value <
                                      controller.horseList.length - 1
                                  ? () {
                                      horseIndex.value += 1;
                                      _ctrl.setHorse(controller
                                          .horseList[horseIndex.value]);
                                    }
                                  : () => {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: horseIndex.value <
                                        controller.horseList.length - 1
                                    ? Colors.black
                                    : Colors.grey,
                              )),
                        ],
                      ),
                    ],
                  );
                });
          } else {
            return Container();
          }
        },
        options: CarouselOptions(
            aspectRatio: 1 / 1.2,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            scrollPhysics: const NeverScrollableScrollPhysics()),
        carouselController: controller.horseSetupcarouselController,
      ),
    );
  }
}
