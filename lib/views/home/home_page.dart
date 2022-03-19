import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:unalin_not_defteri/views/home/home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  static String routeName = '/views/home/home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Container(
          child: const Text('Home Page'),
        ),
      ),
    );
  }
}
