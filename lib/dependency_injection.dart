import 'package:get/get.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';

class DependencyInjection {
  DependencyInjection._();

  static void init() {
    //TODO: Inject dependencies
    Get.put(AuthRepo(), permanent: true);
  }
}
