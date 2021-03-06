import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern_demo/app/data/repositories/remote/authentication_repository.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class LoginController extends GetxController {
  final AuthenticationRepository _authenticationRepository =
      Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  String _username = '', _password = '';

  void onUserNameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<void> submit() async {
    try {
      // final String requestToken = Get.arguments as String;
      RequestToken requestToken =
          await _authenticationRepository.newRequestToken();
      final RequestToken authRequestToken =
          await _authenticationRepository.authWithLogin(
        username: _username,
        password: _password,
        requestToken: requestToken.requestToken,
      );
      await _localAuthRepository.setSession(authRequestToken);
      Get.offNamed(AppRoutes.HOME);
    } catch (e) {
      print(e);
      String message = '';

      if (e is DioError) {
        if (e.response != null) {
          message = e.response.statusMessage;
        } else {
          message = e.message;
        }
      }
      // Get.dialog(AlertDialog(
      //   title: Text('Erro'),
      //   content: Text(message),
      //   actions: [
      //     FlatButton(
      //       onPressed: () {
      //         Get.back();
      //       },
      //       child: Text('OK'),
      //     ),
      //   ],
      // ));
      Get.defaultDialog(
        title: 'Atenção',
        titleStyle: TextStyle(fontSize: 25),
        middleText: message,
        middleTextStyle: TextStyle(fontSize: 20),
        backgroundColor: Colors.amber,
        radius: 60,
        textConfirm: 'OK',
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        },
        buttonColor: Colors.green,
        barrierDismissible: false,
      );
    }
  }
}
