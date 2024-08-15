import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myday/Presentations/SplashScreen/splash_screen.dart';
import 'Config/AppRoutes/routes_imports.dart';
import 'Utils/Const/color_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            getPages: AppRoutes.routes,
            initialRoute: AppRoutes.splash,
            theme: ThemeData(
              fontFamily: 'Product Sans',
              bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.white,
                shadowColor: Colors.white,
                surfaceTintColor: Colors.white,
              ),
              primaryColor: Color(0xFF787878),
              textTheme: TextTheme(
                headlineLarge: TextStyle(
                  fontSize: 30.sp,
                  color: const Color(0xFF00275c),
                  fontWeight: FontWeight.bold,
                ),
                headlineMedium: TextStyle(
                  fontSize: 28.sp,
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.w500,
                ),
                headlineSmall: TextStyle(
                  fontSize: 26.sp,
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.w500,
                ),

                ///Titles are all bold but same size as body text
                // Title
                titleLarge: TextStyle(
                  fontSize: 18.sp,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
                titleMedium: TextStyle(
                  fontSize: 16.sp,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
                titleSmall: TextStyle(
                  fontSize: 14.sp,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),

                ///Body text are all regular weight use title if bold is needed
                // bodyLarge: TextStyle(
                //   fontSize: 18.sp,
                //   color: const Color(0xFF242424),
                //   fontWeight: FontWeight.normal,
                // ),
                // bodyMedium: TextStyle(
                //   fontSize: 16.sp,
                //   color: black,
                //   fontWeight: FontWeight.normal,
                // ),
                // bodySmall: TextStyle(
                //   fontSize: 14.sp,
                //   color: const Color(0xFF242424),
                //   fontWeight: FontWeight.normal,
                // ),

                /// Label
                labelLarge: TextStyle(
                  fontSize: 12.sp,
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
                labelMedium: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFF242424),
                  fontWeight: FontWeight.normal,
                ),
                labelSmall: TextStyle(
                  fontSize: 12.sp,
                  color: black,
                  fontWeight: FontWeight.normal,
                ),
              ),

              ///Scaffold
              scaffoldBackgroundColor: const Color(0xFFF5F5F5),

              ///APP BAR
              appBarTheme: AppBarTheme(
                elevation: 0,
                backgroundColor: Colors.transparent,
                titleTextStyle: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

              ///Elevated Button
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: borderColor),
                      borderRadius: BorderRadius.circular(30.0.r),
                    ),
                    fixedSize: Size(130.w, 40.h),
                    foregroundColor: Color(0xFF134376),
                    elevation: 0,
                    animationDuration: const Duration(milliseconds: 700),
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )),

              ///Divider
              dividerTheme: DividerThemeData(
                thickness: 1,
                color: yellowD,
              ),

              ///Icon
              iconTheme: const IconThemeData(color: Color(0xFF272B35)),

              ///Input Decoration
              inputDecorationTheme: InputDecorationTheme(
                hintStyle: GoogleFonts.inter(
                  color: const Color(0xFF666666),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIconColor: const Color(0xFF666666),
                suffixIconColor: const Color(0xFF535353),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500.r),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500.r),
                  borderSide: const BorderSide(
                    color: Color(0xFF070029),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500.r),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              checkboxTheme: CheckboxThemeData(
                fillColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    // Customize the fill color based on the checkbox's state
                    if (states.contains(MaterialState.selected)) {
                      return const Color(0xFF070029); // Color when checked
                    }
                    return Color(0xFFFFFFFF); // Color when unchecked
                  },
                ),
              ),
            ),
          );
        });

  }
}

