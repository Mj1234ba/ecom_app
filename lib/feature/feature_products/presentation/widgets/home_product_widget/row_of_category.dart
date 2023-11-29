import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/data.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/home_product_controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RowOfCategory extends StatelessWidget {
  const RowOfCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: GetBuilder<HomeController>(builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(listofImageCategory.length, (index) {
            return InkWell(
              onTap: () {
                controller.changeIndex(index);
              },
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(listofImageCategory[index])),
                  SizedBox(height: 5.h),
                  controller.currentIndex == index
                      ? MediumTextWith16(
                          text: listOfCategoryName[index],
                          color: AppColor.primary)
                      : MediumTextWith12(text: listOfCategoryName[index])
                ],
              ),
            );
          }),
        );
      }),
    );
  }
}
