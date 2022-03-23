import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/add_horse_controller.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/add_horse_setup_grid_tile.dart';

class AddHorsePage extends StatelessWidget {
  AddHorsePage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  void scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 20));
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    List<AddHorseSetupGridTile> insideList =
        getSetupTileList(HorsePosition.inside);
    List<AddHorseSetupGridTile> outsideList =
        getSetupTileList(HorsePosition.outside);
    List<AddHorseSetupGridTile> timeSlots = getTimeSlots();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Get.back(),
          ),
          actions: [
            Builder(
                builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(Icons.menu))),
          ],
        ),
        drawer: Drawer(
          child: Column(children: [
            ElevatedButton(
                onPressed: () => Get.find<AuthController>().logout(),
                child: const Text(logoutBtnTxt))
          ]),
        ),
        body: GetX<AddHorseController>(
            init: AddHorseController(Get.find(), Get.find()),
            builder: (_ctrl) {
              return SingleChildScrollView(
                controller: _scrollController,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) => _ctrl.name.value = value,
                      decoration:
                          const InputDecoration(hintText: inputNameHint),
                    ),
                    const Text(outSideDressInfoTxt),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: outsideList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 1,
                                crossAxisSpacing: 1),
                        itemBuilder: (context, index) => outsideList[index]),
                    const Text(inSideDressInfoTxt),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: insideList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 1,
                                crossAxisSpacing: 1),
                        itemBuilder: (context, index) => insideList[index]),
                    Row(
                      children: [
                        const Text(horseStabledAtMemberStableToggleTxt),
                        Switch(
                            value: _ctrl.horseIsStabledAtUserMemberStable.value,
                            onChanged: (val) => {
                                  _ctrl.horseIsStabledAtUserMemberStable.value =
                                      val,
                                }),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(concentrateFoodInfoTxt),
                        Switch(
                            value: _ctrl.concentrateSelected.value,
                            onChanged: (val) => {
                                  _ctrl.concentrateSelected.value = val,
                                  scrollToBottom(),
                                }),
                      ],
                    ),
                    if (_ctrl.concentrateSelected.value) ...[
                      const Text(when),
                      GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: timeSlots.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 1,
                                  crossAxisSpacing: 1),
                          itemBuilder: (context, index) => timeSlots[index]),
                    ],
                    ElevatedButton(
                        onPressed: () {
                          _ctrl.saveHorseToDb();
                          Get.back();
                        },
                        child: const Text('save')),
                    verticalSpaceLarge
                  ],
                ),
              );
            }),
      ),
    );
  }

  List<AddHorseSetupGridTile> getSetupTileList(HorsePosition position) {
    return [
      AddHorseSetupGridTile(
        icon: Icons.horizontal_rule_sharp,
        title: 'back and front',
        position: position,
        protection: HorseProtectionSetup.both,
      ),
      AddHorseSetupGridTile(
        icon: Icons.ac_unit_sharp,
        title: 'back',
        position: position,
        protection: HorseProtectionSetup.back,
      ),
      AddHorseSetupGridTile(
        icon: Icons.ac_unit_sharp,
        title: 'front',
        position: position,
        protection: HorseProtectionSetup.front,
      ),
      AddHorseSetupGridTile(
        icon: Icons.ac_unit_sharp,
        title: 'no cover',
        position: position,
        coverSetup: HorseCoverSetup.none,
      ),
      AddHorseSetupGridTile(
        icon: Icons.ac_unit_sharp,
        title: 'summer cover',
        position: position,
        coverSetup: HorseCoverSetup.summer,
      ),
      AddHorseSetupGridTile(
        icon: Icons.ac_unit_sharp,
        title: 'winter cover',
        position: position,
        coverSetup: HorseCoverSetup.winter,
      ),
    ];
  }

  List<AddHorseSetupGridTile> getTimeSlots() {
    return [
      const AddHorseSetupGridTile(
        icon: Icons.timer,
        title: 'morning',
        concentrateFeed: HorseConcentrateFeed.morning,
      ),
      const AddHorseSetupGridTile(
        icon: Icons.timer,
        title: 'afternoon',
        concentrateFeed: HorseConcentrateFeed.afternoon,
      ),
      const AddHorseSetupGridTile(
        icon: Icons.timer,
        title: 'evening',
        concentrateFeed: HorseConcentrateFeed.evening,
      ),
      const AddHorseSetupGridTile(
        icon: Icons.timer,
        title: 'nigth',
        concentrateFeed: HorseConcentrateFeed.night,
      ),
    ];
  }
}
