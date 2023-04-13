import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconsModel{
  final String title;
  final List<IconsItemModel> items;
  RxBool isExpandable = true.obs;
  IconsModel({required this.title,required this.isExpandable,required this.items});
}

class IconsItemModel{
  final Icon icon;
  IconsItemModel({required this.icon});
}