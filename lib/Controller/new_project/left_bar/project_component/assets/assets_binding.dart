import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/assets/assets_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class AssetsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AssetsController(),tag: RouteConstants.assetsTab);
  }
}