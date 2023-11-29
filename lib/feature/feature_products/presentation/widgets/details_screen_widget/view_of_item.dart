import 'package:ecommerce/core/color_manager.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewItem extends StatelessWidget {
  String image;
  ViewItem({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.w,
        height: 280.h,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  color: Colors.grey)
            ],
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(100.r),
                bottomLeft: Radius.circular(100.r))),
        child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                  width: 270.w,
                  height: 230.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              image))))
            ]));
  }
}
