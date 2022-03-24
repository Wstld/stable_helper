import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class AddOrUpdateHorseController extends GetxController {
  AddOrUpdateHorseController(this._firestoreRepo, this._authRepo);
  final AuthRepo _authRepo;
  final FirestoreRepo _firestoreRepo;

  final RxString name = RxString('');
  final TextEditingController nameInputController = TextEditingController();

  final Rx<HorseProtectionSetup> protectionInside =
      Rx(HorseProtectionSetup.none);
  final Rx<HorseProtectionSetup> portectionOutside =
      Rx(HorseProtectionSetup.none);

  final Rx<HorseCoverSetup> coverInside = Rx(HorseCoverSetup.none);
  final Rx<HorseCoverSetup> coverOutside = Rx(HorseCoverSetup.none);

  final RxBool concentrateSelected = RxBool(false);
  final Rx<HorseConcentrateFeed> timeForConcentrate =
      Rx(HorseConcentrateFeed.none);

  final RxBool horseIsStabledAtUserMemberStable = RxBool(true);

  @override
  void onInit() {
    if (Get.arguments != null && Get.arguments['id'] != null) {
      setInitialValues(Get.find<HomeRootController>()
          .horseList
          .where((element) => element.id == Get.arguments['id'])
          .first);
    }

    super.onInit();
  }

  void setInitialValues(Horse horse) {
    final HorseSetup insideSetup = horse.horseSetup.insideSetup;
    final HorseSetup outsideSetup = horse.horseSetup.outsideSetup;
    name.value = horse.name;
    nameInputController.text = name.value;
    protectionInside.value = insideSetup.protection;
    coverInside.value = insideSetup.cover;
    portectionOutside.value = outsideSetup.protection;
    coverOutside.value = outsideSetup.cover;
    concentrateSelected.value = horse.horseSetup.concentrates != null &&
            horse.horseSetup.concentrates != HorseConcentrateFeed.none
        ? true
        : false;
    timeForConcentrate.value =
        horse.horseSetup.concentrates ?? HorseConcentrateFeed.none;
    if (horse.stablesId != null &&
        Get.find<HomeRootController>().userData.value?.stablesId != null &&
        horse.stablesId ==
            Get.find<HomeRootController>().userData.value?.stablesId) {
      horseIsStabledAtUserMemberStable.value = true;
    } else {
      horseIsStabledAtUserMemberStable.value = false;
    }
    update();
  }

  void updateHorseSetup({
    HorsePosition? position,
    HorseProtectionSetup? protection,
    HorseCoverSetup? cover,
    HorseConcentrateFeed? concentrateFeed,
  }) {
    assert(protection != null || cover != null || concentrateFeed != null);
    if (protection != null && position != null) {
      switch (position) {
        case HorsePosition.inside:
          protectionInside.value != protection
              ? protectionInside.value = protection
              : protectionInside.value = HorseProtectionSetup.none;
          break;
        case HorsePosition.outside:
          portectionOutside.value != protection
              ? portectionOutside.value = protection
              : portectionOutside.value = HorseProtectionSetup.none;
      }
    }
    if (cover != null && position != null) {
      switch (position) {
        case HorsePosition.inside:
          coverInside.value != cover
              ? coverInside.value = cover
              : coverInside.value = HorseCoverSetup.none;
          break;
        case HorsePosition.outside:
          coverOutside.value != cover
              ? coverOutside.value = cover
              : coverOutside.value = HorseCoverSetup.none;
      }
    }
    if (concentrateFeed != null) {
      timeForConcentrate.value = concentrateFeed;
    }
  }

  void saveHorseToDb() {
    Horse horse = Horse(
      id: name.value + _authRepo.firebaseAuth.currentUser!.uid,
      ownerId: _authRepo.firebaseAuth.currentUser!.uid,
      stablesId: horseIsStabledAtUserMemberStable.value
          ? Get.find<HomeRootController>().userData.value?.stablesId
          : null,
      name: name.value,
      extraRiders: null,
      horseSetup: HorseConfiguration(
          concentrates: timeForConcentrate.value,
          insideSetup: HorseSetup.inside(
              cover: coverInside.value, protection: protectionInside.value),
          outsideSetup: HorseSetup.outside(
              cover: coverOutside.value, protection: portectionOutside.value)),
    );
    if (Get.arguments != null) {
      _firestoreRepo.deleteHorse(
          Get.arguments['id'], _authRepo.firebaseAuth.currentUser!.uid);
    }
    _firestoreRepo.saveHorse(horse, _authRepo.firebaseAuth.currentUser!.uid);
  }
}
