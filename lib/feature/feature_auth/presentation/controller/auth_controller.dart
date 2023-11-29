import 'package:ecommerce/core/cach_helper.dart';
import 'package:ecommerce/core/function.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:ecommerce/feature/feature_products/presentation/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  String? emailuser;
  String? passworduser;
  String? errorEmail;
  String? errorPassword;

//// i use this way because i use Textfield not textformfield
// as we know that  Textformfield need to use StatefulWidget
// (when validate some thing i need GlobalKey and key need to StatefulWidget)

  submitDataOfUser() {
    errorEmail = null;
    errorPassword = null;

    if (emailText.value.text.isEmpty && passwordText.value.text.isEmpty) {
      errorEmail = 'Enter Email';
      errorPassword = 'Enter Password';
      update();
      return;
    }
    if (emailText.value.text.isEmpty) {
      errorEmail = 'Enter Email';
      update();
      return;
    }

    if (passwordText.value.text.isEmpty) {
      errorPassword = 'Enter password';
      update();
      return;
    }
    CachHelper.saveData(key: AppString.keyOfSharedPrefEmail, value: emailText.value.text);
    CachHelper.saveData(key: AppString.keyOfSharedPrefpass, value: passwordText.value.text);

    changeScreeninWithOff(widget: const MainScreen(), trans: Transition.fade);

    update();
  }

  // I do this because textEditingController stay in memory so it effect on performance
  @override
  void dispose() {
    emailText.dispose();
    passwordText.dispose();
    super.dispose();
  }
}
