import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/account_screeon_controller/account_controller.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/account_screen_widget/email_or_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AccountController());

    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Column(children: [
                  SizedBox(height: 20.h),
                  FadeInDown(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        BoldTextWith20(text: 'My Account'),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ])),
                  SizedBox(height: 20.h),
                  GetBuilder<AccountController>(builder: (context) {
                    return Column(children: [
                      EmailOrPassword(
                          text: ' Email: ${controller.email}',
                          icon: Icons.email),
                      SizedBox(height: 10.h),
                      EmailOrPassword(
                          text: ' password: ${controller.password}',
                          icon: Icons.password)
                    ]);
                  })
                ]))));
  }
}
