import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/compos/compos_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class ComposBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ComposController(),tag: RouteConstants.composTab);
  }
}