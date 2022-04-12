import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/constants.dart';
import 'package:stable_helper/core/routes/routes.dart';
import 'package:stable_helper/core/theme/themes.dart';
import 'package:stable_helper/presentation/binding/bindings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Hide native navigationbar, show it on edge swipe.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return GetMaterialApp(
      fallbackLocale: const Locale('en', 'US'),
      locale: Get.deviceLocale,
      theme: AppTheme.light,
      initialBinding: RootBinding(),
      getPages: AppPages.pages,
      initialRoute: Pages.splash.routeName,
    );
  }
}
