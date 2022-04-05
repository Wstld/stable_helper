import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactHorseOwnerController extends GetxController with StateMixin<User> {
  final FirestoreRepo _firestoreRepo;
  final String _userId;
  ContactHorseOwnerController(this._firestoreRepo, this._userId);

  @override
  void onInit() async {
    try {
      User user = await _firestoreRepo.fetchUser(_userId);
      change(user, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }

    super.onInit();
  }

  void callOwner({required String number}) async {
    if (await canLaunch('tel:$number')) {
      await launch('tel:$number');
    } else {
      Get.snackbar(
          'Not applicable', 'your device do not support this function');
    }
  }

  void textOwner({required String number}) async {
    if (await canLaunch('sms:$number')) {
      await launch('sms:$number');
    } else {
      Get.snackbar(
          'Not applicable', 'your device do not support this function');
    }
  }
}
