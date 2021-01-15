import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/modules/details/detail_controller.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => Scaffold(),
    );
  }
}
