import 'package:flutter/material.dart';
import 'package:unalin_not_defteri/data/src/colors.dart';
import 'package:unalin_not_defteri/data/src/strings.dart';
import 'package:unalin_not_defteri/views/login/login_controller.dart';
import 'package:unalin_not_defteri/views/register/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends GetWidget<RegisterController> {
  static String routeName = '/views/register/register_page';
// RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(rregisterAppBarText),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildUserNameTextField(),
          _buildEmailTextField(),
          _buildBookTextField(),
          _buildPasswordTextField(),
          _buildPasswordVervyTextField(),
          SizedBox(
            height: 20,
          ),
          _buildButton()
        ],
      ),
    );
  }

  Widget _buildUserNameTextField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        color: white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(300.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
          child: TextField(
            controller: LoginController().userNameController,
            textInputAction: TextInputAction.next,
            obscureText: false,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: tusernameText),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        color: white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
          child: TextField(
            controller: RegisterController().emailController,
            textInputAction: TextInputAction.next,
            obscureText: false,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: remailText),
          ),
        ),
      ),
    );
  }

  Widget _buildBookTextField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        color: white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
          child: TextField(
            controller: RegisterController().bookController,
            textInputAction: TextInputAction.next,
            obscureText: false,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: rbookText),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        color: white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
          child: TextField(
            controller: RegisterController().passwordController,
            textInputAction: TextInputAction.next,
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: rpasswordText),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordVervyTextField() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 10,
        color: white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(300.0),
            topLeft: Radius.circular(50.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
          child: TextField(
            controller: RegisterController().passwordVerfyController,
            textInputAction: TextInputAction.next,
            obscureText: true,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: rpasswordVerfyText),
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 45,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(rregisterButtonText),
          style: ElevatedButton.styleFrom(primary: mainColor),
        ),
      ),
    );
  }
}
