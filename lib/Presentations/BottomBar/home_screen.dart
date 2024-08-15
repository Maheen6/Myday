import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myday/Utils/Const/color_const.dart';
import 'package:myday/Utils/Extensions/text_extension.dart';
import 'package:myday/Widgets/custom_button.dart';

import '../../Utils/Const/asset_const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xffFFFCE3),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Home',
          style: context.headlineSmall,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(radius: 30.r, child: Image.asset(ImageConst.user)),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              Text(
                'Hi Maheen',
                style: context.headlineLarge,
              ),
              20.verticalSpace,
              Row(
                children: [
                  Text('Task List', style: context.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
                  Spacer(),
                  CustomButton(title: 'Add Task', width: 120.h,
                  height: 50.h,)
                ],
              ) 

            ],
          ),
        ),
      ),
    );
  }
}
