import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapp/Model/compos_model.dart';

class ComposViewModel{
  ///Private Properties.
  final RxList<ComposModel> _list = RxList.empty(growable: true);

  ///Get-Only Properties.
  RxList<ComposModel> get list => _list;


  void addItem(ComposModel item){
    _list.add(item);
  }

  void createMenuItem(){
    final basic = ComposModel(title: "Basic", isExpandable: true.obs, items: [
      ComposItem(icon: Icon(Icons.rectangle_outlined),title: "Rectangle (R)"),
      ComposItem(icon: Icon(Icons.circle_outlined),title: "Circle (O)"),
      ComposItem(icon: Icon(Icons.polyline_outlined),title: "Polygon (Y)"),
      ComposItem(icon: Icon(Icons.line_axis_outlined),title: "Line (L)"),
      ComposItem(icon: Icon(Icons.text_fields_outlined),title: "Text (T)"),
      ComposItem(icon: Icon(Icons.image_outlined),title: "Image (I)"),
      ComposItem(icon: Icon(Icons.one_k_outlined),title: "1K"),
      ComposItem(icon: Icon(Icons.input_outlined),title: "Input"),
      ComposItem(icon: Icon(Icons.check_box_outline_blank_outlined),title: "Text Area"),
    ]);

    final container = ComposModel(title: "Container", isExpandable: true.obs, items: [
      ComposItem(icon: Icon(Icons.rectangle_outlined),title: "Rectangle (R)"),
      ComposItem(icon: Icon(Icons.circle_outlined),title: "Circle (O)"),
      ComposItem(icon: Icon(Icons.polyline_outlined),title: "Polygon (Y)"),
      ComposItem(icon: Icon(Icons.line_axis_outlined),title: "Line (L)"),
      ComposItem(icon: Icon(Icons.text_fields_outlined),title: "Text (T)"),
      ComposItem(icon: Icon(Icons.image_outlined),title: "Image (I)"),
      ComposItem(icon: Icon(Icons.one_k_outlined),title: "1K"),
      ComposItem(icon: Icon(Icons.input_outlined),title: "Input"),
      ComposItem(icon: Icon(Icons.check_box_outline_blank_outlined),title: "Text Area"),
    ]);

    final common = ComposModel(title: "Common", isExpandable: true.obs, items: [
      ComposItem(icon: Icon(Icons.rectangle_outlined),title: "Rectangle (R)"),
      ComposItem(icon: Icon(Icons.circle_outlined),title: "Circle (O)"),
      ComposItem(icon: Icon(Icons.polyline_outlined),title: "Polygon (Y)"),
      ComposItem(icon: Icon(Icons.line_axis_outlined),title: "Line (L)"),
      ComposItem(icon: Icon(Icons.text_fields_outlined),title: "Text (T)"),
      ComposItem(icon: Icon(Icons.image_outlined),title: "Image (I)"),
      ComposItem(icon: Icon(Icons.one_k_outlined),title: "1K"),
      ComposItem(icon: Icon(Icons.input_outlined),title: "Input"),
      ComposItem(icon: Icon(Icons.check_box_outline_blank_outlined),title: "Text Area"),
    ]);

    final chart = ComposModel(title: "Chart", isExpandable: true.obs, items: [
      ComposItem(icon: Icon(Icons.rectangle_outlined),title: "Rectangle (R)"),
      ComposItem(icon: Icon(Icons.circle_outlined),title: "Circle (O)"),
      ComposItem(icon: Icon(Icons.polyline_outlined),title: "Polygon (Y)"),
      ComposItem(icon: Icon(Icons.line_axis_outlined),title: "Line (L)"),
      ComposItem(icon: Icon(Icons.text_fields_outlined),title: "Text (T)"),
      ComposItem(icon: Icon(Icons.image_outlined),title: "Image (I)"),
      ComposItem(icon: Icon(Icons.one_k_outlined),title: "1K"),
      ComposItem(icon: Icon(Icons.input_outlined),title: "Input"),
      ComposItem(icon: Icon(Icons.check_box_outline_blank_outlined),title: "Text Area"),
    ]);

    final markup = ComposModel(title: "Markup", isExpandable: true.obs, items: [
      ComposItem(icon: Icon(Icons.rectangle_outlined),title: "Rectangle (R)"),
      ComposItem(icon: Icon(Icons.circle_outlined),title: "Circle (O)"),
      ComposItem(icon: Icon(Icons.polyline_outlined),title: "Polygon (Y)"),
      ComposItem(icon: Icon(Icons.line_axis_outlined),title: "Line (L)"),
      ComposItem(icon: Icon(Icons.text_fields_outlined),title: "Text (T)"),
      ComposItem(icon: Icon(Icons.image_outlined),title: "Image (I)"),
      ComposItem(icon: Icon(Icons.one_k_outlined),title: "1K"),
      ComposItem(icon: Icon(Icons.input_outlined),title: "Input"),
      ComposItem(icon: Icon(Icons.check_box_outline_blank_outlined),title: "Text Area"),
    ]);

    final shape = ComposModel(title: "Shape", isExpandable: true.obs, items: [
      ComposItem(icon: Icon(Icons.rectangle_outlined),title: "Rectangle (R)"),
      ComposItem(icon: Icon(Icons.circle_outlined),title: "Circle (O)"),
      ComposItem(icon: Icon(Icons.polyline_outlined),title: "Polygon (Y)"),
      ComposItem(icon: Icon(Icons.line_axis_outlined),title: "Line (L)"),
      ComposItem(icon: Icon(Icons.text_fields_outlined),title: "Text (T)"),
      ComposItem(icon: Icon(Icons.image_outlined),title: "Image (I)"),
      ComposItem(icon: Icon(Icons.one_k_outlined),title: "1K"),
      ComposItem(icon: Icon(Icons.input_outlined),title: "Input"),
      ComposItem(icon: Icon(Icons.check_box_outline_blank_outlined),title: "Text Area"),
    ]);

    addItem(basic);
    addItem(container);
    addItem(common);
    addItem(chart);
    addItem(markup);
    addItem(shape);
  }
}