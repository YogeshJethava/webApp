import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/right_bar/properties/properties_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class PropertiesBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PropertiesController(),tag: RouteConstants.properties);
  }
}