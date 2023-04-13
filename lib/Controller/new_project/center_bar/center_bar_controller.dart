import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_board/stack_board.dart';

class CenterBarController extends GetxController{
  late StackBoardController boardController;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    boardController = StackBoardController();

  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    boardController.add(StackBoardItem(child: Container(color: Colors.white,width: 320,height: 550),id: 1));
  }

  @override
  void onClose() {
    // TODO: implement onClose
    boardController.dispose();
    super.onClose();
  }
}