import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:unalin_not_defteri/views/login/login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  static String routeName = '/views/login/login_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Container(
          child: Text('Login'),
        ),
      ),
    );
  }
}
