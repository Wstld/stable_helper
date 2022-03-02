import 'package:flutter/material.dart';
import 'package:stable_helper/core/theme/ui_helper.dart';

class HomeRootPage extends StatelessWidget {
  const HomeRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: pagePadding,
        child: const Text('home'),
      )),
    );
  }
}
