import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var radius = BorderRadius.circular(25.r);
var horizontalPadding = 20.w;
var verticalPadding = 10.h;

/// Colors
Color secondaryText = const Color(0xff333333);
Color borderColor = const Color(0xFF39A0CB);
Color yellowD = const Color(0xffDBB13E);
Color darkGrey = const Color(0xFF999999);
Color white = Colors.white;
Color black = Colors.black;
Color background = Color(0xFF254857);
Color brown = Color(0xFFA17441);

// Color iconColor = const Color(0xFF272B35);

List<BoxShadow> boxShadow = [
  BoxShadow(
    color: borderColor.withOpacity(0.3),
    offset: Offset(0, 0),
    spreadRadius: 5,
    blurRadius: 1,
  ),
];

// LinearGradient gradientYellow = const LinearGradient(
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
//   colors: [Color(0xffE4BB49), Color(0xffAB7D01)],
// );

LinearGradient gradientBackground = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff258CB733), Color(0xff60E1FF)]
);




/// For Material Colors
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
