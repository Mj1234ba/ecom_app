import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowOfRememberAndForget extends StatelessWidget {
  const RowOfRememberAndForget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
            MediumTextWith14(text: AppString.remember)
          ],
        ),
        Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: BoldTextWith14(text: AppString.forget, color: Colors.blue)),
      ],
    );
  }
}
