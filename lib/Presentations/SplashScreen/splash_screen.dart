import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';
import 'package:myday/Presentations/SplashScreen/splash_controller.dart';
import 'package:myday/Utils/Extensions/text_extension.dart';

import '../../Config/AppRoutes/routes_imports.dart';
import '../../Utils/Const/asset_const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.put(SplashController());

    return Scaffold(
      backgroundColor: Color(0xffFFFCE3),
      body: SafeArea(
        child: Column(
          children: [

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
            50.verticalSpace,
            Text(
              'Craft a Detailed \nPlan for Your Day',
              style: context.headlineLarge!.copyWith(fontSize: 40.sp),
            ),
            Spacer(),
            GradientSlideToAct(
              text: 'Slide to Start',
              dragableIconBackgroundColor: Colors.blue.withOpacity(0.4),
              onSubmit: () {
                Get.toNamed(AppRoutes.home);
              },
              backgroundColor: const Color(0xFF00275c).withOpacity(0.3),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                colors: [
                  const Color(0xFF00275c),
                  Colors.blue.withOpacity(0.4)
                ]
              ),
            ),
            180.verticalSpace,
          ],
        ),
      ),
    );
  }
}
