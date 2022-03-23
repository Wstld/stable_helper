import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/core/theme/stables_icon_icons.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/ui/widgets/user_home/horse_daily_setup_gird_tile.dart';

class DailyHorseSetupController extends GetxController {
  final FirestoreRepo _firestoreRepo;
  DailyHorseSetupController(
    this._firestoreRepo, {
    required this.chore,
    required Horse horse,
  }) {
    setHorseOptions(horse);
    setTiles();
    _horse.value = horse;
  }

  final StableChore chore;
  final Rxn<Horse> _horse = Rxn<Horse>();
  final RxBool feed = RxBool(true);
  RxnBool stabling = RxnBool();
  RxnBool turnOut = RxnBool();
  final Rx<HorseProtectionSetup> protection =
      Rx<HorseProtectionSetup>(HorseProtectionSetup.none);
  final Rx<HorseCoverSetup> cover = Rx<HorseCoverSetup>(HorseCoverSetup.none);
  RxList<Widget> optionsList = RxList();

  void setHorseOptions(Horse horse) {
    feed.value = horse.temporarySetup?[DateTime.now().getDate]?.feed ?? true;
    if (chore is Stableing) {
      stabling.value =
          horse.temporarySetup?[DateTime.now().getDate]?.preformStabeling ??
              true;

      turnOut.value =
          horse.temporarySetup?[DateTime.now().getDate]?.preformTurnOut ??
              false;

      protection.value = horse.temporarySetup?[DateTime.now().getDate]
              ?.insideSetup?.protection ??
          horse.horseSetup.insideSetup.protection;

      cover.value =
          horse.temporarySetup?[DateTime.now().getDate]?.insideSetup?.cover ??
              horse.horseSetup.insideSetup.cover;
    } else if (chore is TurnOut) {
      turnOut.value =
          horse.temporarySetup?[DateTime.now().getDate]?.preformTurnOut ?? true;

      stabling.value =
          horse.temporarySetup?[DateTime.now().getDate]?.preformStabeling ??
              false;

      protection.value = horse.temporarySetup?[DateTime.now().getDate]
              ?.outsideSetup?.protection ??
          horse.horseSetup.outsideSetup.protection;
      cover.value =
          horse.temporarySetup?[DateTime.now().getDate]?.outsideSetup?.cover ??
              horse.horseSetup.outsideSetup.cover;
    }
    update();
  }

  void setTiles() {
    List<Widget> list = [
      HorseDailySetupGridTile(
          isSelcted: stabling.value!,
          icon: StablesIcon.putInside,
          onTap: () {
            turnOut.value = false;
            stabling.value = true;
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted: turnOut.value!,
          icon: StablesIcon.putOutside,
          onTap: () {
            stabling.value = false;
            turnOut.value = true;
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted: feed.value,
          icon: Icons.food_bank_outlined,
          onTap: () {
            feed.toggle();
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted: cover.value == HorseCoverSetup.none ? true : false,
          icon: StablesIcon.protectionNone,
          onTap: () {
            cover.value = HorseCoverSetup.none;
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted: cover.value == HorseCoverSetup.summer ? true : false,
          icon: StablesIcon.coverSummer,
          onTap: () {
            cover.value = HorseCoverSetup.summer;
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted: cover.value == HorseCoverSetup.winter ? true : false,
          icon: StablesIcon.coverWinter,
          onTap: () {
            cover.value = HorseCoverSetup.winter;
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted:
              protection.value == HorseProtectionSetup.none ? true : false,
          icon: StablesIcon.protectionNone,
          onTap: () {
            protection.value = HorseProtectionSetup.none;
            saveTempSettings();
          }),
      HorseDailySetupGridTile(
          isSelcted: protection.value == HorseProtectionSetup.back
              ? true
              : protection.value == HorseProtectionSetup.both
                  ? true
                  : false,
          icon: StablesIcon.protectionBack,
          onTap: () {
            if (protection.value == HorseProtectionSetup.front) {
              protection.value = HorseProtectionSetup.both;
              saveTempSettings();
            } else {
              protection.value = HorseProtectionSetup.back;
              saveTempSettings();
            }
          }),
      HorseDailySetupGridTile(
          isSelcted: protection.value == HorseProtectionSetup.front
              ? true
              : protection.value == HorseProtectionSetup.both
                  ? true
                  : false,
          icon: StablesIcon.protectionFront,
          onTap: () {
            if (protection.value == HorseProtectionSetup.back) {
              protection.value = HorseProtectionSetup.both;
              saveTempSettings();
            } else {
              protection.value = HorseProtectionSetup.front;
              saveTempSettings();
            }
          }),
    ];

    optionsList.value = list;

    optionsList.refresh();
  }

  void saveTempSettings() {
    final horse = _horse.value!;

    List<String> listSetup = horse.temporarySetup?.keys.toList() ?? [];
    TemporaryHorseSetup? temporaryHorseSetup;
    if (listSetup.isEmpty || !listSetup.contains(DateTime.now().getDate)) {
      temporaryHorseSetup = TemporaryHorseSetup(
          feed: feed.value,
          preformStabeling: stabling.value!,
          preformTurnOut: turnOut.value!,
          timeStamp: DateTime.now(),
          insideSetup: chore is Stableing
              ? HorseSetup.inside(
                  cover: cover.value, protection: protection.value)
              : horse.horseSetup.insideSetup,
          outsideSetup: chore is TurnOut
              ? HorseSetup.outside(
                  cover: cover.value, protection: protection.value)
              : horse.horseSetup.outsideSetup);
    } else {
      TemporaryHorseSetup currentTemp =
          horse.temporarySetup![DateTime.now().getDate]!;
      if (chore is Stableing) {
        temporaryHorseSetup = currentTemp.copyWith(
            feed: feed.value,
            preformStabeling: stabling.value!,
            preformTurnOut: turnOut.value!,
            insideSetup: HorseSetup.inside(
                cover: cover.value, protection: protection.value));
      } else if (chore is TurnOut) {
        temporaryHorseSetup = currentTemp.copyWith(
            feed: feed.value,
            preformStabeling: stabling.value!,
            preformTurnOut: turnOut.value!,
            outsideSetup: HorseSetup.outside(
                cover: cover.value, protection: protection.value));
      }
    }

    _firestoreRepo.saveTempHorseSettings(
        horseId: horse.id,
        userId: horse.ownerId,
        temporaryHorseSetup: temporaryHorseSetup!);
    setTiles();
  }

  void setHorse(Horse horse) {
    _horse.value = horse;
    _horse.refresh();
  }

  @override
  void onInit() {
    log('test');

    update();
    _horse.listen((horse) {
      setHorseOptions(horse!);
      setTiles();
      update();
    });

    super.onInit();
  }
}
