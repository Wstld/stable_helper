import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/controller/stables_chore_controller.dart';

class ChoresCarouselWithIndicator extends StatelessWidget {
  ChoresCarouselWithIndicator({Key? key, required this.list}) : super(key: key);
  final List<StableChore> list;
  final RxInt carouselIndex = RxInt(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: list.length,
            itemBuilder: (context, itemIndex, pageIndex) {
              return GetX<StablesChoreController>(
                  init: StablesChoreController(
                      Get.find<AuthController>(), Get.find<FirestoreRepo>()),
                  tag: itemIndex.toString(),
                  builder: (_ctrl) {
                    if (list[itemIndex].assingneeId != null) {
                      _ctrl.fetchAssignee(list[itemIndex].assingneeId!);
                    }

                    return GestureDetector(
                      onTap: list[pageIndex] is! Feeding
                          ? () => Get.toNamed(
                              Pages.stableChoreDetails.routeName,
                              arguments: {'type': list[pageIndex]})
                          : () => {},
                      child: Container(
                        color: Colors.blue,
                        width: 300,
                        height: 100,
                        child: Column(
                          children: [
                            Text(list[itemIndex].displayName),
                            Text(_ctrl.assignee.value != null
                                ? '${_ctrl.assignee.value!.firstname} '
                                    '${_ctrl.assignee.value!.lastname}'
                                : ''),
                          ],
                        ),
                      ),
                    );
                  });
            },
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 3.0,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reaseon) {
                  Get.find<HomeRootController>()
                      .horseSetupcarouselController
                      .animateToPage(index);
                  carouselIndex.value = index;
                }))),
        verticalSpaceSmall,
        ObxValue<RxInt>(
            (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: getButtons(index.value),
                ),
            carouselIndex),
      ],
    );
  }

  List<Widget> getButtons(int selectedIndex) {
    return List.generate(
        list.length,
        (index) => Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  color: index == selectedIndex ? Colors.blue : Colors.blueGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
            ));
  }
}
