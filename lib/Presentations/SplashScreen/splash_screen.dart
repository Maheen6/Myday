import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myday/Presentations/SplashScreen/splash_controller.dart';
import 'package:myday/Utils/Const/color_const.dart';
import 'package:myday/Utils/Extensions/text_extension.dart';

import '../../Utils/Const/asset_const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.put(SplashController());

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(ImageConst.background,
            height: 1.sh,
            width: 1.sw,
            fit: BoxFit.fill,),
        Obx(() {
          return AnimatedScale(
            scale: splashController.isScale.value ? 0.8 : 0.5,
            duration: const Duration(milliseconds: 1500),
            child: Image.asset(
              ImageConst.splash,
              // height: 155.h,
            ),
          );
        }),
            Positioned(
              bottom: 300,
              left: 30,
              child: Text('Manage your \ndaily tasks',
              style: context.headlineLarge!.copyWith(fontSize: 40.sp),),
            )

          ],
        ),
      ),
    );
  }
}
