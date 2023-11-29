import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whiteColor,
      leading: Icon(Icons.menu, color: AppColor.blackColor),
      elevation: 0,
      title: BoldTextWith16(text: 'Home', color: AppColor.blackColor),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp, color: AppColor.blackColor))
      ],
    );
  }
}
