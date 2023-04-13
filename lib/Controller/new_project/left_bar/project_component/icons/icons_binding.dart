import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/icons/icons_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class IconsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => IconsController(),tag: RouteConstants.iconsTab);
  }
}