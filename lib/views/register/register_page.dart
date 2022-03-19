import 'package:flutter/material.dart';
import 'package:unalin_not_defteri/views/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends GetWidget<RegisterController> {
  static String routeName = '/views/register/register_page';
// RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Center(
        child: Container(
          child: Text('Register Page'),
        ),
      ),
    );
  }
}
