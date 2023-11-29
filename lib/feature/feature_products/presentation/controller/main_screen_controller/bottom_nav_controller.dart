import 'package:get/get.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0;

  changeIndex(int value) {
    if (value == currentIndex) return;
    currentIndex = value;
    update();
  }
}
