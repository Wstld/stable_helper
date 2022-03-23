import 'dart:developer';

import 'package:get/get.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class StableChoreDetailsController extends GetxController
    with StateMixin<List<ChoreDetails>> {
  StableChoreDetailsController(this._firestoreRepo, this.chore,
      {required this.stables});
  final FirestoreRepo _firestoreRepo;

  final RxList<ChoreDetails> displayList = RxList<ChoreDetails>();
  final Stables stables;
  final StableChore chore;

  @override
  void onInit() async {
    try {
      List<ChoreDetails> choreDetailsList = [];
      //Fetch all Horses at stables.
      if (stables.members != null) {
        List<Horse> stabledHorses = await _firestoreRepo
            .fetchAllHorsesAtStables(stables.members!, stables.id);
        for (Horse horse in stabledHorses) {
          if (horse.temporarySetup != null) {
            //if ther is temp setup create chore details with temp
            List<TemporaryHorseSetup> todaysSetup = horse.temporarySetup!.values
                .toList()
                .where(
                    (element) => element.timeStamp.isSameDate(DateTime.now()))
                .toList();
            if (todaysSetup.isNotEmpty) {
              if (chore is Stableing) {
                choreDetailsList.add(ChoreDetails(
                    name: horse.name,
                    ownerId: horse.ownerId,
                    feed: todaysSetup.first.feed,
                    preformStabelingOrTurnOut:
                        todaysSetup.first.preformStabeling,
                    horseSetup: todaysSetup.first.insideSetup!));
              }
              if (chore is TurnOut) {
                choreDetailsList.add(ChoreDetails(
                    name: horse.name,
                    ownerId: horse.ownerId,
                    feed: todaysSetup.first.feed,
                    preformStabelingOrTurnOut: todaysSetup.first.preformTurnOut,
                    horseSetup: todaysSetup.first.outsideSetup!));
              }
            }
          } else {
            if (chore is Stableing) {
              choreDetailsList.add(ChoreDetails(
                  name: horse.name,
                  ownerId: horse.ownerId,
                  horseSetup: horse.horseSetup.insideSetup));
            }
            if (chore is TurnOut) {
              choreDetailsList.add(ChoreDetails(
                  name: horse.name,
                  ownerId: horse.ownerId,
                  horseSetup: horse.horseSetup.outsideSetup));
            }
          }
        }
      }
      log(choreDetailsList.toString());
      change(choreDetailsList, status: RxStatus.success());
    } catch (e) {}
    super.onInit();
  }
}
