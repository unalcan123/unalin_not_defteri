import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:unalin_not_defteri/views/add_notes/add_notes_page.dart';
import 'package:unalin_not_defteri/views/home/home_page.dart';
import 'package:unalin_not_defteri/views/login/login_page.dart';
import 'package:unalin_not_defteri/views/register/register_page.dart';

List<GetPage> getPages = [
  GetPage(name: LoginPage.routeName, page: () => LoginPage()),
  GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),
  GetPage(name: HomePage.routeName, page: () => HomePage()),
  GetPage(name: AddNotesPage.routeName, page: () => AddNotesPage())
];
