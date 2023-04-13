import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/project_component_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class ProjectComponentBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProjectComponentController(),tag: RouteConstants.projectComponent);
  }
}