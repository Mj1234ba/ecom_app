import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonForAddOrCheckin extends StatelessWidget {
  String title;
  dynamic func;

  ButtonForAddOrCheckin({required this.func, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        onPressed: () {
          func();
        },
        color: AppColor.primary,
        child: MediumTextWith18(text: title),
      ),
    );
  }
}
