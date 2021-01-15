import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController {

  printMessage(){
    print("Mensagem...");
    Get.offNamed(AppRoutes.HOME);
  }

}
