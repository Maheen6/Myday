part of 'routes_imports.dart';

class AppRoutes {
  static String splash = "/splash";


  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
    ),

  ];
}
