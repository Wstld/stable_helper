import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/data/models/models.dart';

class CarouselWithIndicator extends StatelessWidget {
  CarouselWithIndicator({Key? key, required this.list}) : super(key: key);
  final List<StableWork> list;
  final RxInt carouselIndex = RxInt(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: list.length,
            itemBuilder: (context, itemIndex, pageIndex) => Container(
                  color: Colors.blue,
                  width: 300,
                  child: Row(
                    children: [
                      Text(list[itemIndex].displayName),
                    ],
                  ),
                ),
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
