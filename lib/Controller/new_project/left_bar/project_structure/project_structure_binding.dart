import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_structure/project_structure_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class ProjectStructureBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProjectStructureController(),tag: RouteConstants.projectStructure);
  }
}