import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/center_bar/center_bar_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class CenterBarBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CenterBarController(),tag: RouteConstants.centerBar);
  }
}