import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:ecommerce/feature/feature_products/data/models/product_model.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/cart_controller/cart_product_controller.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/button_for_add_or_checkin.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/details_screen_widget/appBar.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/details_screen_widget/price_item.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/details_screen_widget/rate_of_item.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/details_screen_widget/view_of_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  ProductItem product;

  DetailsScreen({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<Cartcontroller>();
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60), child: AppBarDeatils()),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SemiBoldTextWith20(text: '${product.title}'),
                  SizedBox(height: 10.h),
                  RateOfItem(rate: product.rate!),
                  SizedBox(height: 10.h),
                  PriceItem(price: '${product.price}'),
                  SizedBox(height: 30.h),
                  ViewItem(image: product.imageOfProduct!),
                  SizedBox(height: 20.h),
                  SemiBoldTextWith20(text: 'Description:'),
                  SizedBox(height: 10.h),
                  MediumTextWith16(text: product.description!),
                  SizedBox(height: 20.h),
                  ButtonForAddOrCheckin(
                      title: AppString.addtoCart,
                      func: () {
                        bool value = controller.addToCart(product);
                        if (value) {
                          Get.closeAllSnackbars();
                          Get.snackbar(AppString.success, AppString.whySuccess,
                              backgroundColor: Colors.green);
                        } else {
                          Get.closeAllSnackbars();
                          Get.snackbar(AppString.fail, AppString.whyFail,
                              backgroundColor: Colors.red);
                        }
                      }),
                  SizedBox(height: 10.h)
                ]))));
  }
}
