import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stable_helper/core/constants/enums.dart';
import 'package:stable_helper/core/constants/string_const.dart';
import 'package:stable_helper/core/theme/ui_helper.dart';
import 'package:stable_helper/presentation/controller/controllers.dart';
import 'package:stable_helper/presentation/controller/login_controller.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetX<LoginController>(
          init: LoginController(Get.find<AuthController>()),
          builder: (_ctrl) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpaceMedium,
                  Image.asset(
                    'lib/core/assets/BG.png',
                    width: Get.width * 0.5,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, bottom: 50),
                    child: Form(
                      child: Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 3,
                            child: TextFormField(
                              onChanged: (value) =>
                                  _ctrl.emaiInput.value = value,
                              controller: _ctrl.emailInputTextController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  errorText: _ctrl.emailErrorTxt.value,
                                  hintText: emailHint),
                              maxLines: 1,
                            ),
                          ),
                          verticalSpaceMedium,
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 3,
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: passwordHint),
                              onChanged: (value) =>
                                  _ctrl.passwordInput.value = value,
                              controller: _ctrl.passwordInputTextController,
                              keyboardType: TextInputType.text,
                              maxLines: 1,
                              obscureText: true,
                            ),
                          ),
                          verticalSpaceMedium,
                          if (_ctrl.formType.value ==
                              LoginFormType.register) ...[
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 3,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: passwordReEnterHint,
                                    errorText: _ctrl.passwordErrorTxt.value),
                                onChanged: (value) =>
                                    _ctrl.passwordSecondInput.value = value,
                                controller:
                                    _ctrl.passwordSecondInputTextController,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                obscureText: true,
                              ),
                            ),
                            verticalSpaceMedium,
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 3,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: firstNameHint,
                                    errorText: _ctrl.firstNameErrorTxt.value),
                                onChanged: (value) =>
                                    _ctrl.firstNameInput.value = value,
                                controller: _ctrl.firstNameInputTextController,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                              ),
                            ),
                            verticalSpaceMedium,
                            Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 3,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: lastNameHint,
                                    errorText: _ctrl.lastNameErrorTxt.value),
                                onChanged: (value) =>
                                    _ctrl.lastNameInput.value = value,
                                controller: _ctrl.lastNameInputTextController,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                              ),
                            ),
                          ],
                          TextButton(
                              onPressed: _ctrl.formType.value ==
                                      LoginFormType.login
                                  ? () => {
                                        _ctrl.formType.value =
                                            LoginFormType.register
                                      }
                                  : () => {
                                        _ctrl.formType.value =
                                            LoginFormType.login
                                      },
                              child: _ctrl.formType.value == LoginFormType.login
                                  ? const Text(registerBtnTxt)
                                  : const Text(goBackToLoginBtnTxt)),
                          ElevatedButton(
                              onPressed: () =>
                                  _ctrl.formType.value == LoginFormType.login
                                      ? _ctrl.login()
                                      : _ctrl.register(),
                              child: Text(
                                _ctrl.formType.value == LoginFormType.login
                                    ? loginBtnTxt
                                    : registerSubmitBtnTxt,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
