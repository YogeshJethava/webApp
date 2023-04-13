import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/center_bar/center_bar_controller.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/assets/assets_controller.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/compos/compos_controller.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/icons/icons_controller.dart';
import 'package:webapp/Controller/new_project/left_bar/project_structure/pages/pages_controller.dart';
import 'package:webapp/Controller/new_project/new_project_controller.dart';
import 'package:webapp/Controller/new_project/right_bar/properties/properties_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

import 'left_bar/project_structure/layers/layers_controller.dart';

class NewProjectBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NewProjectController(),tag: RouteConstants.newProject);
    Get.lazyPut(() => ComposController(),tag: RouteConstants.composTab);
    Get.lazyPut(() => IconsController(),tag: RouteConstants.iconsTab);
    Get.lazyPut(() => PagesController(),tag: RouteConstants.pagesTab);
    Get.lazyPut(() => CenterBarController(),tag: RouteConstants.centerBar);
    Get.lazyPut(() => AssetsController(),tag: RouteConstants.assetsTab);
    Get.lazyPut(() => PropertiesController(),tag: RouteConstants.properties);
    Get.lazyPut(() => LayersController(),tag: RouteConstants.layersTab);
  }

}