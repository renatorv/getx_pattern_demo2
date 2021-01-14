import 'package:get/route_manager.dart';
import 'package:getx_pattern_demo/app/modules/splash/splash_page.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.SPLASH, page: () => SplashPage()),
  ];
}
