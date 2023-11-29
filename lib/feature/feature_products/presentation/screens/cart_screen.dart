import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/cart_controller/cart_product_controller.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/button_for_add_or_checkin.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/cart_widgets/image_of_cart_items.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/cart_widgets/info_of_item_cart.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/cart_widgets/widget_of_no_product_added.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<Cartcontroller>();
    return Scaffold(
        appBar: AppBar(
          title: BoldTextWith20(text: 'My Page', color: AppColor.blackColor),
          elevation: 0,
          backgroundColor: AppColor.whiteColor,
        ),
        body: Column(children: [
          Expanded(child: SingleChildScrollView(
              child: GetBuilder<Cartcontroller>(builder: (context) {
            return controller.listOfCart.isEmpty
                ? const NoProductAdded()
                : Column(
                    children: List.generate(
                        controller.listOfCart.length,
                        (index) => FadeInLeft(
                            duration: Duration(milliseconds: index * 600),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    decoration: decoration(),
                                    width: double.infinity,
                                    height: 110.h,
                                    child: Row(children: [
                                      CartOfImage(
                                          image: controller.listOfCart[index]
                                              .imageOfProduct!),
                                      const VerticalDivider(color: Colors.grey),
                                      InfoItemCart(
                                          price:
                                              '${controller.listOfCart[index].price}',
                                          rate:
                                              '${controller.listOfCart[index].rate}',
                                          title: controller
                                              .listOfCart[index].title!
                                              .substring(0, 15))
                                    ]))))));
          }))),
          SizedBox(height: 10.h),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: ButtonForAddOrCheckin(
                title: 'Check In',
                func: () {},
              )),
          SizedBox(height: 10.h)
        ]));
  }

  decoration() {
    return BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: const [
          BoxShadow(blurRadius: 1, offset: Offset(0, 2), color: Colors.grey)
        ]);
  }
}
