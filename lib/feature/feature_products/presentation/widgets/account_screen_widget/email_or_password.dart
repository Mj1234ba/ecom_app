import 'package:animate_do/animate_do.dart';
import 'package:ecommerce/core/color_manager.dart';
import 'package:ecommerce/core/font_manager.dart';
import 'package:flutter/material.dart';

class EmailOrPassword extends StatelessWidget {
  IconData icon;
  String text;

  EmailOrPassword({required this.text, required this .icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FadeInDown(
      child: Row(children: [
        Icon(icon, color: AppColor.primary),
        MediumTextWith18(
            text: text)
      ]),
    );
  }
}
