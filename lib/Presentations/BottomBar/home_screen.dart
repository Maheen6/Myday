import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myday/Utils/Extensions/text_extension.dart';

import '../../Utils/Const/asset_const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4e8ce0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 30.r,
                  child: Image.asset(ImageConst.user)),
              20.verticalSpace,
              Text('Hi Maheen', style: context.headlineLarge,),
              5.verticalSpace,
              Text('What are you going to do today?', style: context.titleLarge!.copyWith(fontWeight: FontWeight.normal)),
            ],
          ),
        ),
      ),
    );
  }
}
