import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_structure/pages/pages_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class PagesBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PagesController(),tag: RouteConstants.pagesTab);
  }
}