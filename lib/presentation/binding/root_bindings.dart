import 'package:get/get.dart';
import 'package:stable_helper/data/repository/auth_repo.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(Get.find<AuthRepo>()),
        permanent: true);
  }
}
