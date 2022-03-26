import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:unalin_not_defteri/data/src/colors.dart';
import 'package:unalin_not_defteri/data/src/images.dart';
import 'package:unalin_not_defteri/data/src/strings.dart';
import 'package:unalin_not_defteri/views/login/login_controller.dart';
import 'package:get/get.dart';
import 'package:unalin_not_defteri/views/register/register_page.dart';

class LoginPage extends GetWidget<LoginController> {
  static String routeName = '/views/login/login_page';

  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(tloginBaslikTekst),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ResimBuild(),
            AralikVer2(),
            UserNameTextField(),
            AralikVer(),
            PasswordTextField(),
            AralikVer(),
            AralikVer2(),
            BuildButton(),
            AralikVer(),
            GirisYazilari()
          ],
        ),
      ),
    );
  }
}

class AralikVer2 extends StatelessWidget {
  const AralikVer2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
    );
  }
}

class GirisYazilari extends StatelessWidget {
  const GirisYazilari({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          const TextSpan(
            text: tregisterTextdeel1,
            style: registerText1Style,
          ),
          TextSpan(
              text: tregisterButtonTextdeel2,
              style: registerText2Style,
              recognizer: TapGestureRecognizer()
                ..onTap = (() {
                  Get.offNamed(RegisterPage.routeName);
                })),
        ]));
  }
}

class AralikVer extends StatelessWidget {
  const AralikVer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
    );
  }
}

class ResimBuild extends StatelessWidget {
  const ResimBuild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      orman,
      height: Get.height * .35,
    );
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = 45;
    return SizedBox(
      height: size,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(tloginButtonText),
        style: ElevatedButton.styleFrom(primary: mainColor),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(300.0),
            bottomRight: Radius.circular(50.0)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 2, 8, 2),
        child: TextField(
          controller: LoginController().passwordController,
          obscureText: true,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: tpasswordText),
        ),
      ),
    );
  }
}

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(300.0),
          topLeft: Radius.circular(50.0),
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
    );
  }
}
