import 'package:get/get.dart';
import 'package:stable_helper/data/models/models.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class HomeRootController extends GetxController with StateMixin<UserData> {
  final AuthRepo _authRepo;
  final FirestoreRepo _firestoreRepo;

  HomeRootController(this._authRepo, this._firestoreRepo);
  @override
  void onInit() {
    initUserDataStream();
    super.onInit();
  }

  void initUserDataStream() {
    _firestoreRepo
        .getUserDataStream(_authRepo.firebaseAuth.currentUser!.uid)
        .listen((event) {
      if (event.exists) {
        if (event.data() != null) {
          final UserData userData =
              UserData.fromJson(event.data() as Map<String, dynamic>);
          change(userData, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
      } else {
        change(null, status: RxStatus.error('no such user'));
      }
    });
  }
}
