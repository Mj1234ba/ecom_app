import 'package:ecommerce/core/asset_manager.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/function.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:ecommerce/feature/feature_auth/presentation/controller/auth_controller.dart';
import 'package:ecommerce/feature/feature_auth/presentation/screens/login.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/button_social_media.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/button_submit_info.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/container_clipper.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/row_divider.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/textButton.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      ClipPath(
          clipper: ContainerClipper(),
          child: Container(height: 125.h, color: AppColor.primary)),
      BoldTextWith60(text: '${AppString.signup}!'),
      SizedBox(height: 30.h),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                MediumTextWith16(text: AppString.email),
                TextFieldWidget(
                  controller: controller,
                  textcontroller: controller.emailText,
                  hinttext: 'username@gmail.com',
                ),
                SizedBox(height: 20.h),
                MediumTextWith16(text: AppString.password),
                TextFieldWidget(
                  controller: controller,
                  textcontroller: controller.passwordText,
                  icon: Icons.visibility_off_sharp,
                ),
                SizedBox(height: 20.h),
                MediumTextWith16(text: AppString.confirmpass),
                TextFieldWidget(
                  controller: controller,
                  textcontroller: controller.passwordText,
                  icon: Icons.visibility_off_sharp,
                )
              ]))),
      SizedBox(height: 30.h),
      ButtonSubmitInfo(function: () {}),
      SizedBox(height: 10.h),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        BoldTextWith16(text: AppString.haveAccount),
        ButtonSignOrLogin(
            text: AppString.login, moveToScreen: const LoginScreen())
      ]),
      const RowDivider(),
      SizedBox(height: 10.h),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ButtonSocialMedia(
            size: size,
            text: AppString.signupwithFace,
            image: ImageAsset.faceImage),
        ButtonSocialMedia(
            size: size,
            text: AppString.signupwithGoogle,
            image: ImageAsset.googleImage),
      ])
    ])));
  }
}
