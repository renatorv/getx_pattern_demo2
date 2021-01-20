import 'package:get/get.dart';
// import 'package:getx_pattern_demo/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class SplashController extends GetxController {
  // final AuthenticationRepository _repository =
  //     Get.find<AuthenticationRepository>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      await Future.delayed(Duration(seconds: 4));
      Get.offNamed(AppRoutes.HOME);
    } catch (e) {
      print(e);
    }
  }
}
