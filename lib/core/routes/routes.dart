import 'package:get/get.dart';
import 'package:stable_helper/core/constants/nav_consts.dart';
import 'package:stable_helper/core/routes/middleware/login_middleware.dart';
import 'package:stable_helper/presentation/ui/pages/home_root_page.dart';
import 'package:stable_helper/presentation/ui/pages/pages.dart';

class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
        name: Pages.login.routeName,
        page: () => const LoginPage(),
        middlewares: [LoginMiddleWare()]),
    GetPage(
      name: Pages.home.routeName,
      page: () => const HomeRootPage(),
    )
  ];
}
