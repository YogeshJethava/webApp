import 'package:get/get.dart';
import '../../../../../ViewModel/new_project_view_model/left_bar/icons_view_model.dart';

class IconsController extends GetxController{
  final IconsViewModel viewModel = IconsViewModel();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewModel.createMenuItem();
  }
}