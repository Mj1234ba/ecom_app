import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/function.dart';
import 'package:ecommerce/feature/feature_auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonSignOrLogin extends StatelessWidget {
  String text;
  Widget moveToScreen;

  ButtonSignOrLogin({required this.text, required this.moveToScreen, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Get.delete<AuthController>();
          changeScreeninWithOff(widget: moveToScreen,trans: Transition.upToDown);
        },
        child: BoldTextWith14(text: text));
  }
}
