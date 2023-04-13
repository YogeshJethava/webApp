import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/right_bar/interaction/interaction_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class InteractionBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => InteractionController(),tag: RouteConstants.interactions);
  }
}