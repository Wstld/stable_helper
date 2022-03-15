import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/stables_chore_controller.dart';

class CarouselWithIndicator extends StatelessWidget {
  CarouselWithIndicator({Key? key, required this.list}) : super(key: key);
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

                    return Container(
                      color: Colors.blue,
                      width: 300,
                      child: Column(
                        children: [
                          Text(list[itemIndex].displayName),
                          Text(_ctrl.assignee.value != null
                              ? '${_ctrl.assignee.value!.firstname} '
                                  '${_ctrl.assignee.value!.lastname}'
                              : ''),
                        ],
                      ),
                    );
                  });
            },
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                enableInfiniteScroll: false,
                onPageChanged: ((index, reaseon) =>
                    carouselIndex.value = index))),
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
