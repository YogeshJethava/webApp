import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PropertiesController extends GetxController{
  Rx<Color> selectedColor = Color(0xff000000).obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}