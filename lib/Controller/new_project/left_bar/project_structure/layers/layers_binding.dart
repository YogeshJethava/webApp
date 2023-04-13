import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_structure/layers/layers_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class LayersBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LayersController(),tag: RouteConstants.layersTab);
  }
}