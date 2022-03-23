import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/presentation/ui/pages/pages.dart';
import 'package:stable_helper/presentation/ui/pages/stable_chore_details.dart';

class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
        name: Pages.splash.routeName,
        page: () => const SplashScreen(),
        middlewares: [LoginMiddleWare()]),
    GetPage(
      name: Pages.login.routeName,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Pages.home.routeName,
      page: () => const HomeRootPage(),
    ),
    GetPage(
      name: Pages.addHorse.routeName,
      page: () => AddHorsePage(),
    ),
    GetPage(
      name: Pages.stableChoreDetails.routeName,
      page: () => const StableChoreDetailsPage(),
    )
  ];
}
