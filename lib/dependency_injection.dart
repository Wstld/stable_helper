import 'package:get/get.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/data/repository/firestore_repo.dart';

class DependencyInjection {
  DependencyInjection._();

  static void init() {
    //TODO: Inject dependencies
    Get.put(AuthRepo(), permanent: true);
    Get.lazyPut(() => FirestoreRepo(), fenix: true);
  }
}
