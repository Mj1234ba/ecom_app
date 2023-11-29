import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoItemCart extends StatelessWidget {
  String title;
  String price;
  String rate;

  InfoItemCart(
      {required this.price, required this.rate, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: const EdgeInsets.all(5),
            color: AppColor.whiteColor.withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MediumTextWith16(text: 'title:$title'),
                SizedBox(height: 10.h),
                Row(children: [MediumTextWith16(text: '\$ $price')]),
                SizedBox(height: 10.h),
                Row(children: [
                  Icon(Icons.star, color: AppColor.primary),
                  MediumTextWith16(text: rate)
                ])
              ],
            )));
  }
}
