import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/modules/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
