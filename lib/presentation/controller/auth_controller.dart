import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  String get obj => _obj.value;
}
