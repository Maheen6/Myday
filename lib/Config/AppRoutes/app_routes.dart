part of 'routes_imports.dart';

class AppRoutes {
  static String splash = "/splash";
  static String home = "/home";


  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),

  ];
}
