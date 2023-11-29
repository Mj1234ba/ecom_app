import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:ecommerce/feature/feature_auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonSubmitInfo extends StatelessWidget {
  dynamic function;

  ButtonSubmitInfo({required this.function, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      width: 350.w,
      height: 40.h,
      decoration: BoxDecoration(
          color: AppColor.primary, borderRadius: BorderRadius.circular(10.r)),
      child: MaterialButton(
          onPressed: () {
            function();
          },
          child: BoldTextWith18(text: AppString.login)),
    );
  }
}
