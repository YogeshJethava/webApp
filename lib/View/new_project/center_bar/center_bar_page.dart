import 'package:flutter/material.dart';
import 'package:flutter_scaler/flutter_scaler.dart';
import 'package:get/get.dart';
import 'package:stack_board/stack_board.dart';
import 'package:webapp/Constants/color_constants.dart';
import 'package:webapp/Controller/new_project/center_bar/center_bar_controller.dart';
import 'package:webapp/Controller/new_project/new_project_controller.dart';
import 'package:webapp/Routes/route_constants.dart';
import 'package:zoom_widget/zoom_widget.dart';

class CenterBarPage extends StatelessWidget {
  CenterBarPage({Key? key}) : super(key: key);


  late BuildContext _context;
  late ThemeData _themeData;

  ///Create the instance of [NewProjectController] class.
  final NewProjectController _newProjectController = Get.find(tag: RouteConstants.newProject);

  ///Create the instance of [CenterBarController] class.
  final CenterBarController _centerBarController =
      Get.find(tag: RouteConstants.centerBar);


  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: _themeData.colorScheme.secondary,
      body: buildBody(),
    );
  }

  ///build the widget body.
  Widget buildBody() {
    return Zoom(
        maxZoomWidth: _context.width,
        maxZoomHeight: _context.height,
        backgroundColor: Colors.transparent,
        child: StackBoard(
          controller: _centerBarController.boardController,
          background: Container(color: _themeData.colorScheme.secondary,),
          caseStyle: const CaseStyle(borderWidth: 1,borderColor: ColorConstants.primaryColor,iconColor: Colors.white),
        ));
  }
}
