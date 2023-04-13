import 'package:get/get.dart';
import 'package:webapp/Routes/route_constants.dart';
import 'package:webapp/ViewModel/new_project_view_model/left_bar/assets_view_model.dart';

class AssetsController extends GetxController{

 final AssetsViewModel viewModel = AssetsViewModel();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewModel.createMenuItem();
  }
}