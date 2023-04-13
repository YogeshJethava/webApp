import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ComposModel{
  final String title;
  RxBool isExpandable = true.obs;
  final List<ComposItem> items;
  ComposModel({required this.title,required this.isExpandable,required this.items});
}

class ComposItem{
  final Icon icon;
  final String title;
  ComposItem({required this.icon,required this.title});

}