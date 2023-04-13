import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/right_bar/right_bar_controller.dart';
import 'package:webapp/Routes/route_constants.dart';
class RightBarBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RightBarController(),tag: RouteConstants.rightBar);
  }

}