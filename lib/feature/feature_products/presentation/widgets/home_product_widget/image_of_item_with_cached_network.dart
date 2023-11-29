import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/controller/home_product_controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImageOfItemWidget extends StatelessWidget {
  int index;
  var size;

  ImageOfItemWidget({required this.index, required this.size, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    return Positioned(
      top: 5.h,
      left: 50.w,
      child: RotationTransition(
        turns: AlwaysStoppedAnimation((-4 - index) / 360),
        child: CachedNetworkImage(
            imageUrl: controller.listOfFilterItem[index].imageOfProduct!,
            imageBuilder: (context, imageProvider) => Container(
                height: 160.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: imageProvider))),
            placeholder: (context, _) => Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(color: AppColor.primary)),
            errorWidget: (context, _, error) =>
                Icon(Icons.error, color: AppColor.primary)),
      ),
    );
  }
}
