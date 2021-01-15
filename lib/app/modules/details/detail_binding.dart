import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/modules/details/detail_controller.dart';

class DetailsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}