import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';
import 'package:stable_helper/presentation/controller/stables_chore_controller.dart';

class ChoresCarouselWithIndicator extends StatelessWidget {
  ChoresCarouselWithIndicator(
      {Key? key, required this.list, required this.carouselIndex})
      : super(key: key);
  final List<StableChore> list;
  final RxInt carouselIndex;
  final HomeRootController homeRootController = Get.find<HomeRootController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            CarouselSlider.builder(
                itemCount: list.length,
                itemBuilder: (context, itemIndex, pageIndex) {
                  return GetX<StablesChoreController>(
                      init: StablesChoreController(Get.find<AuthController>(),
                          Get.find<FirestoreRepo>()),
                      tag: itemIndex.toString(),
                      builder: (_ctrl) {
                        if (list[itemIndex].assingneeId != null) {
                          _ctrl.fetchAssignee(list[itemIndex].assingneeId!);
                        }

                        return Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: GestureDetector(
                            onTap: list[pageIndex] is! Feeding
                                ? () => Get.toNamed(
                                    Pages.stableChoreDetails.routeName,
                                    arguments: {'type': list[pageIndex]})
                                : () => {},
                            child: Material(
                              elevation: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: ShColors.darkBlue,
                                    border: Border.all(width: 0.1)),
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      direction: Axis.vertical,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Text(
                                          list[itemIndex].time,
                                          style:
                                              Get.theme.textTheme.headlineSmall,
                                        ),
                                        verticalSpaceTiny,
                                        Container(
                                          width: 250,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: ShColors.background,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: Offset(0, 1),
                                                  color: Color.fromARGB(
                                                      89, 0, 0, 0),
                                                  blurRadius: 5,
                                                  spreadRadius: 1)
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Wrap(
                                                children: [
                                                  horizontalSpaceMedium,
                                                  Text(
                                                    list[itemIndex].displayName,
                                                    style: Get.theme.textTheme
                                                        .titleLarge,
                                                  ),
                                                ],
                                              ),
                                              Wrap(
                                                children: const [
                                                  Icon(
                                                    Icons.info_outlined,
                                                  ),
                                                  horizontalSpaceMedium
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      _ctrl.assignee.value != null
                                          ? '${_ctrl.assignee.value!.firstname} '
                                              '${_ctrl.assignee.value!.lastname}'
                                          : choreUnassignedTxt,
                                      style: Get.theme.textTheme.titleSmall,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 175,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enableInfiniteScroll: false,
                    onPageChanged: ((index, reaseon) {
                      if (homeRootController.userData.value?.horses?.values.any(
                              (element) =>
                                  element.stablesId ==
                                  homeRootController
                                      .userData.value?.stablesId) ??
                          false) {
                        homeRootController.horseSetupcarouselController
                            .animateToPage(index);
                      }
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
        ));
  }

  List<Widget> getButtons(int selectedIndex) {
    return List.generate(
        list.length,
        (index) => Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: index == selectedIndex
                            ? const Offset(0, 1.5)
                            : const Offset(0, 1),
                        color: const Color.fromARGB(89, 0, 0, 0),
                        blurRadius: index == selectedIndex ? 1.5 : 2,
                        spreadRadius: 1)
                  ],
                  color:
                      index == selectedIndex ? ShColors.darkBlue : Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
            ));
  }
}
