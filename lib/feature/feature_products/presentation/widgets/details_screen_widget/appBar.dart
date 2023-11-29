import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarDeatils extends StatefulWidget {
  const AppBarDeatils({Key? key}) : super(key: key);

  @override
  State<AppBarDeatils> createState() => _AppBarDeatilsState();
}

class _AppBarDeatilsState extends State<AppBarDeatils> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new, color: AppColor.blackColor)),
        centerTitle: true,
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
        title: BoldTextWith16(
            text: 'Product Details', color: AppColor.blackColor));
  }
}
