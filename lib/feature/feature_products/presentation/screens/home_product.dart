import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:ecommerce/core/function.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/cart_controller/cart_product_controller.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/home_product_controller/home_controller.dart';
import 'package:ecommerce/feature/feature_products/presentation/screens/details_screen.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/home_product_widget/appBar.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/home_product_widget/background_of_item.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/home_product_widget/image_of_item_with_cached_network.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/home_product_widget/row_of_category.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/home_product_widget/title_of_body_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var controller = Get.put(HomeController());
    Get.put(Cartcontroller());

    return Scaffold(
        backgroundColor: AppColor.background,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.h), child: const AppBarWidget()),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 10.h),
          FadeInDown(
              child: const Align(
                  alignment: Alignment.centerLeft, child: HeadOfBody())),
          SizedBox(height: 15.h),
          FadeInDown(
              duration: const Duration(milliseconds: 900),
              child: const RowOfCategory()),
          SizedBox(height: 20.h),
          GetBuilder<HomeController>(builder: (context) {
            return Wrap(
                spacing: 10,
                runSpacing: 10,
                children:
                    List.generate(controller.listOfFilterItem.length, (index) {
                  return GestureDetector(
                      onTap: () {
                        changeScreeninWithto(
                            widget: DetailsScreen(
                                product: controller.listOfFilterItem[index]),
                            trans: Transition.zoom);
                      },
                      child: FadeInDown(
                          duration: const Duration(seconds: 1),
                          child: SizedBox(
                              width: size.width / 2.1,
                              height: 240.h,
                              child: Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    BackGroundOfItem(index: index, size: size),
                                    ImageOfItemWidget(index: index, size: size),
                                    Positioned(
                                        top: 220.h,
                                        child: Row(children: [
                                          MediumTextWith14(
                                              text: controller
                                                  .listOfProductItems[index]
                                                  .title!
                                                  .substring(0, 12))
                                        ]))
                                  ]))));
                }));
          })
        ])));
  }
}
