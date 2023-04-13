import 'package:get/get.dart';
import 'package:webapp/ViewModel/new_project_view_model/left_bar/compos_view_model.dart';

class ComposController extends GetxController{
  final ComposViewModel viewModel = ComposViewModel();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewModel.createMenuItem();
  }
}