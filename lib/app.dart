import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/routes/routes.dart';
import 'package:stable_helper/presentation/binding/bindings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      fallbackLocale: const Locale('en', 'US'),
      locale: Get.deviceLocale,
      initialBinding: RootBinding(),
      getPages: AppPages.pages,
      initialRoute: Pages.login.routeName,
    );
  }
}
