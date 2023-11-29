import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RateOfItem extends StatelessWidget {
  double rate;

  RateOfItem({required this.rate, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      MediumTextWith18(text: 'Rate: '),
      Row(
          children: List.generate(
              rate.toInt(),
              (index) => Padding(
                  padding: EdgeInsets.only(right: 3.w),
                  child: Icon(
                    Icons.star,
                    color: AppColor.primary,
                  ))))
    ]);
  }
}
