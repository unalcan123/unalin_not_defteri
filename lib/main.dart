import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:unalin_not_defteri/data/get_controllers.dart';
import 'package:unalin_not_defteri/data/routing/get_pages.dart';
import 'package:unalin_not_defteri/views/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  Future<void> main() async {
    await getControllers();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    main();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      home: LoginPage(),
    );
  }
}
