import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class AddHorseController extends GetxController {
  AddHorseController(this._firestoreRepo, this._authRepo);
  final AuthRepo _authRepo;
  final FirestoreRepo _firestoreRepo;

  RxString name = RxString('');

  Rx<HorseProtectionSetup> protectionInside = Rx(HorseProtectionSetup.none);
  Rx<HorseProtectionSetup> portectionOutside = Rx(HorseProtectionSetup.none);

  Rx<HorseCoverSetup> coverInside = Rx(HorseCoverSetup.none);
  Rx<HorseCoverSetup> coverOutside = Rx(HorseCoverSetup.none);

  RxBool concentrateSelected = RxBool(false);
  Rx<HorseConcentrateFeed> timeForConcentrate = Rx(HorseConcentrateFeed.none);

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
      name: name.value,
      extraRiders: null,
      horseSetup: HorseConfiguration(
          concentrates: timeForConcentrate.value,
          insideSetup: HorseSetup.inside(
              cover: coverInside.value, protection: protectionInside.value),
          outsideSetup: HorseSetup.outside(
              cover: coverOutside.value, protection: portectionOutside.value)),
    );
    _firestoreRepo.saveHorse(horse, _authRepo.firebaseAuth.currentUser!.uid);
  }
}
