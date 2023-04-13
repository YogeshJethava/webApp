import 'package:get/get.dart';

class AssetsModel{
  final String title;
  RxBool isExpandable = true.obs;
  final List<AssetsItem> items;
  AssetsModel({required this.title,required this.items,required this.isExpandable});
}

class AssetsItem{

}