import 'package:ecommerce/core/cach_helper.dart';
import 'package:ecommerce/core/string_manager.dart';
import 'package:ecommerce/feature/feature_auth/presentation/screens/login.dart';
import 'package:ecommerce/feature/feature_products/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              builder: (context, widget) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: widget!);
              },
             home: CachHelper.getData(key: AppString.keyOfSharedPrefEmail)==null
              ? const LoginScreen()
              :const  MainScreen()
          );
        });
  }
}