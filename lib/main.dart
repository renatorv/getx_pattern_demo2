import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_pattern_demo/app/utils/dependency_injection.dart';

import 'app/modules/splash/splash_binding.dart';
import 'app/modules/splash/splash_page.dart';
import 'app/routes/app_pages.dart';

void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: SplashBinding(),
      home: SplashPage(),
      getPages: AppPages.pages,
    );
  }
}
