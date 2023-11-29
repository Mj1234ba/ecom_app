import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/home_product_controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackGroundOfItem extends StatelessWidget {
  int index;
  var size;

  BackGroundOfItem({required this.index, required this.size, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    return Positioned(
        top: 3.h,
        child: Container(
            height: 210.h,
            width: size.width / 2.1,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: const [
                  BoxShadow(blurRadius: 1, offset: Offset(0, 2), color: Colors.grey)
                ]),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(children: [
                    Text('Price: \$ ${controller.listOfFilterItem[index].price}')
                  ]),
                  Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Icon(Icons.star, color: AppColor.primary),
                    Padding(
                        padding: EdgeInsets.only(bottom: 3.h),
                        child:
                            Text(' ${controller.listOfFilterItem[index].rate}'))
                  ])
                ]))));
  }
}
