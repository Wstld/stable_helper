import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/theme/colors.dart';
import 'package:stable_helper/core/theme/stables_icon_icons.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/controller/add_or_update_horse_controller.dart';
import 'package:stable_helper/presentation/ui/ui.dart';
import 'package:stable_helper/presentation/ui/widgets/sh_appbar.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/add_horse_setup_grid_tile.dart';

class AddOrUpdateHorsePage extends StatelessWidget {
  AddOrUpdateHorsePage({Key? key}) : super(key: key);
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
        backgroundColor: ShColors.darkBlue,
        appBar: const ShAppBar(showBackBtn: true),
        drawer: const UserMainMenu(),
        body: GetX<AddOrUpdateHorseController>(
            init: AddOrUpdateHorseController(Get.find(), Get.find()),
            builder: (_ctrl) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      verticalSpaceMedium,
                      TextField(
                        controller: _ctrl.nameInputController,
                        onChanged: (value) => _ctrl.name.value = value,
                        decoration: InputDecoration(
                            hintText: inputHorseNameHint,
                            icon: _ctrl.name.value.isNotEmpty
                                ? const Icon(Icons.edit)
                                : null),
                      ),
                      verticalSpaceMedium,
                      Text(
                        outSideDressInfoTxt,
                        style: Get.theme.textTheme.titleMedium,
                      ),
                      const Divider(
                        color: ShColors.lightBlue,
                        thickness: 1,
                      ),
                      verticalSpaceSmall,
                      GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: outsideList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) => outsideList[index]),
                      verticalSpaceLarge,
                      Text(
                        inSideDressInfoTxt,
                        style: Get.theme.textTheme.titleMedium,
                      ),
                      const Divider(
                        color: ShColors.lightBlue,
                        thickness: 1,
                      ),
                      verticalSpaceSmall,
                      GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: insideList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) => insideList[index]),
                      Row(
                        children: [
                          Text(horseStabledAtMemberStableToggleTxt,
                              style: Get.theme.textTheme.titleMedium),
                          Switch(
                              value:
                                  _ctrl.horseIsStabledAtUserMemberStable.value,
                              onChanged: (val) => {
                                    _ctrl.horseIsStabledAtUserMemberStable
                                        .value = val,
                                  }),
                        ],
                      ),
                      if (_ctrl.concentrateSelected.value) ...[
                        verticalSpaceMedium,
                        const Divider(
                          color: ShColors.lightBlue,
                          thickness: 1,
                        )
                      ],
                      Row(
                        children: [
                          Text(concentrateFoodInfoTxt,
                              style: Get.theme.textTheme.titleMedium),
                          Switch(
                              value: _ctrl.concentrateSelected.value,
                              onChanged: (val) => {
                                    _ctrl.concentrateSelected.value = val,
                                    scrollToBottom(),
                                  }),
                        ],
                      ),
                      if (_ctrl.concentrateSelected.value) ...[
                        Text(
                          when,
                          style: Get.theme.textTheme.titleMedium,
                        ),
                        verticalSpaceSmall,
                        GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: timeSlots.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) => timeSlots[index]),
                      ],
                      verticalSpaceMedium,
                      ElevatedButton(
                          onPressed: () {
                            _ctrl.saveHorseToDb();
                            Get.back();
                          },
                          child: const Text(saveChanges)),
                      verticalSpaceLarge
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  List<AddHorseSetupGridTile> getSetupTileList(HorsePosition position) {
    return [
      AddHorseSetupGridTile(
        icon: StablesIcon.protectionBack,
        title: 'back and front',
        position: position,
        protection: HorseProtectionSetup.both,
      ),
      AddHorseSetupGridTile(
        icon: StablesIcon.protectionBack,
        title: 'back',
        position: position,
        protection: HorseProtectionSetup.back,
      ),
      AddHorseSetupGridTile(
        icon: StablesIcon.protectionFront,
        title: 'front',
        position: position,
        protection: HorseProtectionSetup.front,
      ),
      AddHorseSetupGridTile(
        icon: StablesIcon.protectionNone,
        title: 'no cover',
        position: position,
        coverSetup: HorseCoverSetup.none,
      ),
      AddHorseSetupGridTile(
        icon: StablesIcon.coverSummer,
        title: 'summer cover',
        position: position,
        coverSetup: HorseCoverSetup.summer,
      ),
      AddHorseSetupGridTile(
        icon: StablesIcon.coverWinter,
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
