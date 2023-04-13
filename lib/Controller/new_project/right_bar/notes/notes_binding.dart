import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/right_bar/notes/notes_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class NotesBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NotesController(),tag: RouteConstants.notes);
  }
}