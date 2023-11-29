import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/feature/feature_auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController textcontroller;
  String? hinttext;
  IconData? icon;
  AuthController controller;

  TextFieldWidget(
      {required this.textcontroller,
      this.hinttext,
      this.icon,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (context) {
      return Padding(
        padding: EdgeInsets.only(top: 5.0.h),
        child: TextField(
            obscureText: icon != null ? true : false,
            textAlignVertical: TextAlignVertical.center,
            controller: textcontroller,
            cursorColor: AppColor.primary,
            decoration: InputDecoration(
                focusedErrorBorder: outline(),
                errorBorder: outline(),
                errorText: icon != null
                    ? controller.errorPassword
                    : controller.errorEmail,
                suffixIcon: IconButton(onPressed: () {}, icon: Icon(icon)),
                hintText: hinttext,
                contentPadding: const EdgeInsets.all(10),
                enabledBorder: outline(),
                focusedBorder: outline())),
      );
    });
  }

  outline() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.r),
        borderSide: const BorderSide(color: Colors.grey, width: 1.5));
  }
}
