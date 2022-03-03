import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';

class LoginMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    //TODO:Init login service and check for chached user.
    AuthController authController = Get.find<AuthController>();
    log('In Redirect');
    return authController.user.value != null
        ? RouteSettings(name: Pages.home.routeName)
        : RouteSettings(name: Pages.login.routeName);
  }
}
