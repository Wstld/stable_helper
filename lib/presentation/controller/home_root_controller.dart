import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class HomeRootController extends FullLifeCycleController
    with StateMixin<User>, FullLifeCycleMixin {
  final AuthRepo _authRepo;
  final FirestoreRepo _firestoreRepo;
  Rxn<User> userData = Rxn();
  Rxn<Stables> stablesData = Rxn();
  RxList<StableChore> schedule = <StableChore>[].obs;
  final CarouselController horseSetupcarouselController = CarouselController();
  List<Horse> get horseList => userData.value?.horses?.values.toList() ?? [];
  final RxInt memberHomeCarouselIndex = RxInt(0);
  final RxString dateString = RxString(DateTime.now().dateString);

  HomeRootController(this._authRepo, this._firestoreRepo);
  @override
  void onInit() {
    initUserDataStream();
    initStablesStream();
    super.onInit();
  }

  void initUserDataStream() {
    _firestoreRepo
        .getUserDataStream(_authRepo.firebaseAuth.currentUser!.uid)
        .listen((event) {
      if (event.exists) {
        if (event.data() != null) {
          final User userDataFromFb =
              User.fromJson(event.data() as Map<String, dynamic>);
          userData.value = userDataFromFb;
          change(userDataFromFb, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
      } else {
        change(null, status: RxStatus.error('no such user'));
      }
    });
  }

  void updateTime() {
    dateString.value = DateTime.now().dateString;
    update();
  }

  void initStablesStream() {
    userData.listen((event) {
      if (event != null && event.stablesId != null) {
        _firestoreRepo.getStablesStream(event.stablesId!).listen((event) {
          if (event.exists) {
            if (event.data() != null) {
              final Stables response =
                  Stables.fromJson(event.data() as Map<String, dynamic>);

              stablesData.value = response;
              schedule.value =
                  response.schedule!.getTodaysSchedule(DateTime.now().getDay);

              update();
            }
          } else {
            log('stable does not exist');
          }
        });
      }
    });
  }

  void refreshData() async {
    try {
      log('refreshing');
      userData.value = await _firestoreRepo.fetchUser(userData.value!.userId);
      stablesData.value =
          await _firestoreRepo.fetchStables(userData.value!.stablesId!);
      dateString.value = DateTime.now().dateString;
      schedule.value =
          stablesData.value!.schedule!.getTodaysSchedule(DateTime.now().getDay);
      update();
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void onPaused() {}

  @override
  void onDetached() {}

  @override
  void onInactive() {}

  @override
  void onResumed() {
    refreshData();
  }
}
