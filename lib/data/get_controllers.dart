import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:unalin_not_defteri/views/add_notes/add_notes_controller.dart';
import 'package:unalin_not_defteri/views/home/home_controller.dart';
import 'package:unalin_not_defteri/views/login/login_controller.dart';
import 'package:unalin_not_defteri/views/register/register_controller.dart';

Future getControllers() async {
  Get.create(() => LoginController(), permanent: false);
  Get.create(() => RegisterController(), permanent: false);
  Get.create(() => HomeController(), permanent: false);
  Get.create(() => AddNotesController(), permanent: false);
}
