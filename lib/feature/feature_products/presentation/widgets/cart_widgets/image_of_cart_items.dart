import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartOfImage extends StatelessWidget {
  String image;

  CartOfImage({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.r),
              bottomLeft: Radius.circular(15.r)),
        ),
        width: 110.w,
        child: Stack(children: [
          CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (context, imageprovider) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: imageprovider))),
              placeholder: (context, _) =>
                  CircularProgressIndicator(color: AppColor.primary),
              errorWidget: (context, _, error) =>
                  Icon(Icons.error, color: AppColor.primary))
        ]));
  }
}
