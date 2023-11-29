import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/data.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/main_screen_controller/bottom_nav_controller.dart';
import 'package:ecommerce/feature/feature_products/presentation/widgets/main_screen_widget/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var control = Get.put(BottomNavController());
    return Scaffold(
      backgroundColor: AppColor.background,
      body: GetBuilder<BottomNavController>(builder: (context) {
        return listofPages[control.currentIndex];
      }),
      bottomNavigationBar: GetBuilder<BottomNavController>(builder: (context) {
        return BottomNav(controller: control);
      }),
    );
  }
}
