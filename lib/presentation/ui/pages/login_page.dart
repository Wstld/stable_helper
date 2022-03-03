import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/core/theme/ui_helper.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/login_controller.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<LoginController>(
          init: LoginController(Get.find<AuthController>()),
          builder: (_ctrl) {
            return Container(
              padding: pagePadding,
              child: Form(
                child: Column(
                  children: [
                    Obx(() => TextFormField(
                          onChanged: (value) => _ctrl.emaiInput.value = value,
                          controller: _ctrl.emailInputTextController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              errorText: _ctrl.emailErrorTxt.value),
                          maxLines: 1,
                        )),
                    TextFormField(
                      onChanged: (value) => _ctrl.passwordInput.value = value,
                      controller: _ctrl.passwordInputTextController,
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      obscureText: true,
                    ),
                    TextButton(
                        onPressed: () => {log('tap tap')},
                        child: const Text(registerBtnTxt)),
                    ElevatedButton(
                        onPressed: () => _ctrl.submit(),
                        child: const Text(submintBtnTxt)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
