import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myday/Utils/Extensions/text_extension.dart';

import '../Utils/Const/color_const.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final bool isGradient;
  final String title;
  final TextStyle? style;
  final VoidCallback? onTap;
  final bool isBordered;

  bool loading;

  CustomButton({
    super.key,
    this.width,
    this.height,
    this.isGradient = true,
    required this.title,
    this.style,
    this.onTap,
    this.loading = false,
    this.isBordered = false

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      padding: EdgeInsets.zero,
      decoration:

      BoxDecoration(
              color: black,
              border: Border.all(color: black),
              borderRadius: radius * 2, // Set the border radius
            ),
      child: loading
          ? MaterialButton(
              height: 55.h,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.r)),
              onPressed: () {},
              child: isGradient
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'loading',
                            style: style ??
                                context.titleLarge!.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        10.horizontalSpace,
                        SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: CircularProgressIndicator(
                            color: white,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'loading',
                            style: style ?? context.bodyLarge,
                          ),
                        ),
                        10.horizontalSpace,
                        CircularProgressIndicator(
                          strokeWidth: 1,
                          color: white,
                        ),
                      ],
                    ),

            )
          : MaterialButton(
              height: 55.h,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.r)),
              onPressed: onTap,
              child: isGradient
                  ? FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title,
                        style: style ??
                            context.titleLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    )
                  : FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(title, style: style ?? context.bodyLarge),
                    ),
            ),
    );
  }
}


