import 'package:ecommerce/core/cach_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

changeScreeninWithOff({required Widget widget,required Transition trans}) {
  Get.off(widget,
      transition: trans,
      duration: const Duration(milliseconds: 700));
}
changeScreeninWithto({required Widget widget,required Transition trans}) {
  Get.to(widget,
      transition: trans,
      duration: const Duration(milliseconds: 700));
}

