import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unalin_not_defteri/views/add_notes/add_notes_controller.dart';

class AddNotesPage extends GetWidget<AddNotesController> {
  static String routeName = '/views/add_notes/add_notes_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Notes Pages'),
      ),
      body: Center(
        child: Container(
          child: Text('Add Notes Pages'),
        ),
      ),
    );
  }
}
