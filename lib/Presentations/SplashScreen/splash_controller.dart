import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Config/AppRoutes/routes_imports.dart';
import '../../Helpers/get_storare_helper.dart';

class SplashController extends GetxController {
  RxBool isScale = false.obs;

  @override
  void onInit() async {
    super.onInit();

    /// For Animate Logo
    Future.delayed(Duration(milliseconds: 1000), () {
      isScale.value = true;
    });
    Future.delayed(Duration(seconds: 3), () {
      // Get.offNamed(AppRoutes.onboarding);
    });

    var isWelcome = await getWelcome();
    var user = await getUser();


    debugPrint("isWelcome ==> $isWelcome");
    var isRemember = await getRemember();
    if (isWelcome == false) {
      Future.delayed(const Duration(milliseconds: 4000), () async {
        // Get.offAllNamed(AppRoutes.welcome);
      });
    } else {
      if (user != null && isRemember == true) {
        Future.delayed(const Duration(milliseconds: 3000), () async {
          // Get.offNamed(AppRoutes.bottomBar);

          debugPrint("Welcome to HomeScreen");
        });
      } else {
        Future.delayed(const Duration(milliseconds: 3000), () async {
          // Get.offAllNamed(AppRoutes.welcome3);
        });
      }
    }
  }
}
