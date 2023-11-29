import 'package:ecommerce/core/asset_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ButtonSocialMedia extends StatelessWidget {
  var size;
  String text;
  String image;
   ButtonSocialMedia({required this.size,required this.text, required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        width: size.width / 2.2,
        height: 40.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image),
            RegularTextWithSize12(text: text)
          ],
        ),
      ),
    );
  }
}
