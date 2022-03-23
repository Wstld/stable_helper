import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/extensions/extentions.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class HomeRootController extends GetxController with StateMixin<User> {
  final AuthRepo _authRepo;
  final FirestoreRepo _firestoreRepo;
  Rxn<User> userData = Rxn();
  Rxn<Stables> stablesData = Rxn();
  RxList<StableChore> schedule = <StableChore>[].obs;
  final CarouselController horseSetupcarouselController = CarouselController();
  List<Horse> get horseList => userData.value?.horses?.values.toList() ?? [];

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
}
