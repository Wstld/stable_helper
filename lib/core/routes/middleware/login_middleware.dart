import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';

class LoginMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    //TODO:Init login service and check for chached user.
    const String auth = 'not ok';
    log('In Redirect');
    return auth == 'ok' ? RouteSettings(name: Pages.home.routeName) : null;
  }
}
