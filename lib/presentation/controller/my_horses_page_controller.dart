import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:stable_helper/presentation/controller/home_root_controller.dart';

class MyHorsesPageController extends GetxController
    with StateMixin<List<Horse>> {
  final FirestoreRepo _firestoreRepo;

  MyHorsesPageController(
    this._firestoreRepo,
  );

  void deleteHorse(String horseId) {
    _firestoreRepo.deleteHorse(
        horseId, Get.find<HomeRootController>().userData.value!.userId);
    update();
  }
}
