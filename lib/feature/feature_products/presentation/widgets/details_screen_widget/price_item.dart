import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';
class PriceItem extends StatelessWidget {
  String price;
   PriceItem({required this.price, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      MediumTextWith18(text: '\$', color: AppColor.primary),
      BoldTextWith20(text: price)
    ]);
  }
}
