import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/Model/icons_model.dart';

class IconsViewModel{
  ///Private Properties.
  final RxList<IconsModel> _list = RxList.empty(growable: true);

  ///Get-Only Properties.
  RxList<IconsModel> get list => _list;


  void addItem(IconsModel item){
    _list.add(item);
  }

  void createMenuItem(){
    final basic = IconsModel(title: "Basic", isExpandable: true.obs, items: [
      IconsItemModel(icon: Icon(Icons.rectangle_outlined)),
      IconsItemModel(icon: Icon(Icons.circle_outlined)),
      IconsItemModel(icon: Icon(Icons.polyline_outlined)),
      IconsItemModel(icon: Icon(Icons.line_axis_outlined)),
      IconsItemModel(icon: Icon(Icons.text_fields_outlined)),
      IconsItemModel(icon: Icon(Icons.image_outlined)),
      IconsItemModel(icon: Icon(Icons.one_k_outlined)),
      IconsItemModel(icon: Icon(Icons.input_outlined)),
      IconsItemModel(icon: Icon(Icons.check_box_outline_blank_outlined)),
    ]);

    final container = IconsModel(title: "Container", isExpandable: true.obs, items: [
      IconsItemModel(icon: Icon(Icons.rectangle_outlined)),
      IconsItemModel(icon: Icon(Icons.circle_outlined)),
      IconsItemModel(icon: Icon(Icons.polyline_outlined)),
      IconsItemModel(icon: Icon(Icons.line_axis_outlined)),
      IconsItemModel(icon: Icon(Icons.text_fields_outlined)),
      IconsItemModel(icon: Icon(Icons.image_outlined)),
      IconsItemModel(icon: Icon(Icons.one_k_outlined)),
      IconsItemModel(icon: Icon(Icons.input_outlined)),
      IconsItemModel(icon: Icon(Icons.check_box_outline_blank_outlined)),
    ]);

    final common = IconsModel(title: "Common", isExpandable: true.obs, items: [
      IconsItemModel(icon: Icon(Icons.rectangle_outlined)),
      IconsItemModel(icon: Icon(Icons.circle_outlined)),
      IconsItemModel(icon: Icon(Icons.polyline_outlined)),
      IconsItemModel(icon: Icon(Icons.line_axis_outlined)),
      IconsItemModel(icon: Icon(Icons.text_fields_outlined)),
      IconsItemModel(icon: Icon(Icons.image_outlined)),
      IconsItemModel(icon: Icon(Icons.one_k_outlined)),
      IconsItemModel(icon: Icon(Icons.input_outlined)),
      IconsItemModel(icon: Icon(Icons.check_box_outline_blank_outlined)),
    ]);

    final chart = IconsModel(title: "Chart", isExpandable: true.obs, items: [
      IconsItemModel(icon: Icon(Icons.rectangle_outlined)),
      IconsItemModel(icon: Icon(Icons.circle_outlined)),
      IconsItemModel(icon: Icon(Icons.polyline_outlined)),
      IconsItemModel(icon: Icon(Icons.line_axis_outlined)),
      IconsItemModel(icon: Icon(Icons.text_fields_outlined)),
      IconsItemModel(icon: Icon(Icons.image_outlined)),
      IconsItemModel(icon: Icon(Icons.one_k_outlined)),
      IconsItemModel(icon: Icon(Icons.input_outlined)),
      IconsItemModel(icon: Icon(Icons.check_box_outline_blank_outlined)),
    ]);

    final markup = IconsModel(title: "Markup", isExpandable: true.obs, items: [
      IconsItemModel(icon: Icon(Icons.rectangle_outlined)),
      IconsItemModel(icon: Icon(Icons.circle_outlined)),
      IconsItemModel(icon: Icon(Icons.polyline_outlined)),
      IconsItemModel(icon: Icon(Icons.line_axis_outlined)),
      IconsItemModel(icon: Icon(Icons.text_fields_outlined)),
      IconsItemModel(icon: Icon(Icons.image_outlined)),
      IconsItemModel(icon: Icon(Icons.one_k_outlined)),
      IconsItemModel(icon: Icon(Icons.input_outlined)),
      IconsItemModel(icon: Icon(Icons.check_box_outline_blank_outlined)),
    ]);

    final shape = IconsModel(title: "Shape", isExpandable: true.obs, items: [
      IconsItemModel(icon: Icon(Icons.rectangle_outlined)),
      IconsItemModel(icon: Icon(Icons.circle_outlined)),
      IconsItemModel(icon: Icon(Icons.polyline_outlined)),
      IconsItemModel(icon: Icon(Icons.line_axis_outlined)),
      IconsItemModel(icon: Icon(Icons.text_fields_outlined)),
      IconsItemModel(icon: Icon(Icons.image_outlined)),
      IconsItemModel(icon: Icon(Icons.one_k_outlined)),
      IconsItemModel(icon: Icon(Icons.input_outlined)),
      IconsItemModel(icon: Icon(Icons.check_box_outline_blank_outlined)),
    ]);

    addItem(basic);
    addItem(container);
    addItem(common);
    addItem(chart);
    addItem(markup);
    addItem(shape);
  }
}