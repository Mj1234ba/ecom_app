import 'package:ecommerce/core/asset_manager.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/function.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:ecommerce/feature/feature_auth/presentation/controller/auth_controller.dart';
import 'package:ecommerce/feature/feature_auth/presentation/screens/sign_up.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/button_social_media.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/button_submit_info.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/container_clipper.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/login_screen/row_of_remeber_and_forget.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/row_divider.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/textButton.dart';
import 'package:ecommerce/feature/feature_auth/presentation/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        ClipPath(
          clipper: ContainerClipper(),
          child: Container(height: 125.h, color: AppColor.primary),
        ),
        SizedBox(height: 15.h),
        BoldTextWith60(text: '${AppString.login}!'),
        SizedBox(height: 20.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  MediumTextWith18(text: AppString.email),
                  TextFieldWidget(
                      textcontroller: controller.emailText,
                      controller: controller,
                      hinttext: 'username@gmail.com'),
                  SizedBox(height: 30.h),
                  MediumTextWith18(text: AppString.password),
                  TextFieldWidget(
                      controller: controller,
                      textcontroller: controller.passwordText,
                      icon: Icons.visibility_off_sharp)
                ]))),
        SizedBox(height: 20.h),
        const RowOfRememberAndForget(),
        SizedBox(height: 20.h),
        ButtonSubmitInfo(function: () {
          controller.submitDataOfUser();
        }),
        SizedBox(height: 10.h),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BoldTextWith16(text: AppString.noAccount),
          ButtonSignOrLogin(
              text: AppString.signup, moveToScreen: const SignUpScreen())
        ]),
        SizedBox(height: 10.h),
        const RowDivider(),
        SizedBox(height: 20.h),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ButtonSocialMedia(
              size: size,
              text: AppString.loginwithFaceBook,
              image: ImageAsset.faceImage),
          ButtonSocialMedia(
              size: size,
              text: AppString.loginwithGoogle,
              image: ImageAsset.googleImage)
        ])
      ])),
    );
  }
}
