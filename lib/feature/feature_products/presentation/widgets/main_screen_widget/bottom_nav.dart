import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/data.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/main_screen_controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNav extends StatelessWidget {
  BottomNavController controller;

  BottomNav({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      color: AppColor.whiteColor,
      height: 60.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(3, (index) {
          return controller.currentIndex == index
              ? FadeIn(
                  delay: const Duration(milliseconds: 200),
                  child: iconbutton(
                      index: index, color: AppColor.primary, size: 35))
              : iconbutton(index: index, color: Colors.grey, size: 25);
        }),
      ),
    );
  }

  iconbutton({required int index, required Color color, required double size}) {
    return IconButton(
        onPressed: () {
          controller.changeIndex(index);
        },
        icon: Icon(listOfIcons[index], color: color, size: size));
  }
}
