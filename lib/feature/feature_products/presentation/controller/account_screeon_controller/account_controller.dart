import 'package:ecommerce/core/cach_helper.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  String? email;
  String? password;

  @override
  onInit() {
    super.onInit();
    getInfo();
  }

  getInfo() async {
    email = await CachHelper.getData(key: AppString.keyOfSharedPrefEmail);
    password = await CachHelper.getData(key: AppString.keyOfSharedPrefpass);
    update();
  }

  updateInfo() {
    CachHelper.saveData(key: AppString.keyOfSharedPrefEmail, value: email);
    CachHelper.saveData(key: AppString.keyOfSharedPrefpass, value: password);
    update();
  }
}
