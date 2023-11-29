import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadOfBody extends StatelessWidget {
  const HeadOfBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: AppString.findyour,
                  style: textstyle(),
                  children: [
                textSpan(
                    text: AppString.style, size: 30, color: AppColor.primary)
              ])),
          MediumTextWith14(text: AppString.beMoreBeautiful),
        ],
      ),
    );
  }

  textSpan({required String text, required double size, required Color color}) {
    return TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
            color: color));
  }

  textstyle() {
    return TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
        color: Colors.black);
  }
}
