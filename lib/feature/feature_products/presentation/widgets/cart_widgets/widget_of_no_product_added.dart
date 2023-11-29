import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NoProductAdded extends StatelessWidget {
  const NoProductAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: FadeInDown(
        duration: const Duration(seconds: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MediumTextWith20(text: 'No Products added!'),
            MediumTextWith16(text: 'One you have added,come back')
          ],
        ),
      ),
    );
  }
}
