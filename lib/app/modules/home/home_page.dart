import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.transparent,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: _.onUserNameChanged,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'username'),
                ),
                TextField(
                  onChanged: _.onPasswordChanged,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'password'),
                ),
                SizedBox(height: 20),
                FlatButton(
                  onPressed: _.submit,
                  color: Colors.black,
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
