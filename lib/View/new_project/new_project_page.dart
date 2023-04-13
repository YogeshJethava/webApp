import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_menu/flutter_menu.dart';
import 'package:get/get.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:webapp/Controller/new_project/new_project_controller.dart';
import 'package:webapp/Routes/route_constants.dart';
import 'left_bar/left_bar_page.dart';
import 'center_bar/center_bar_page.dart';
import 'right_bar/right_bar_page.dart';

class NewProjectPage extends StatelessWidget {
  NewProjectPage({Key? key}) : super(key: key);
  late BuildContext _context;
  late ThemeData _themeData;
  final MultiSplitViewController _multiSpitController =
      MultiSplitViewController(areas: [
    Area(weight: 0.15, minimalWeight: 0.15),
    Area(weight: 0.7, minimalWeight: 0.2),
    Area(weight: 0.18, minimalWeight: 0.18),
  ]);

  final NewProjectController _controller =
      Get.find(tag: RouteConstants.newProject);

  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    MultiSplitView multiSplitView = MultiSplitView(
        axis: Axis.horizontal,
        onWeightChange: _onWeightChange,
        onDividerTap: _onDividerTap,
        onDividerDoubleTap: _onDividerDoubleTap,
        controller: _multiSpitController,
        antiAliasingWorkaround: false,
        children: [LeftBarPage(), CenterBarPage(), RightBarPage()]);

    MultiSplitViewTheme theme = MultiSplitViewTheme(
        data: MultiSplitViewThemeData(
            dividerPainter: DividerPainters.grooved1(
                backgroundColor: _themeData.colorScheme.primary)),
        child: multiSplitView);

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(34),
          child: AppBar(
            title: Text(
              'New Project',
              style: _themeData.textTheme.bodyMedium!
                  .merge(TextStyle(color: Colors.grey)),
            ),
            shape: const Border(
                bottom: BorderSide(width: 0.5, color: Colors.black)),
            centerTitle: false,
            leading: Icon(Icons.menu),
            actions: [
              buildButtonRow7(),
              const SizedBox(width: 16,),
              buildButtonRow6(),
              const SizedBox(width: 16,),
              buildButtonRow5(),
              const SizedBox(width: 16,),
              buildButtonRow4(),
              const SizedBox(width: 16,),
              buildButtonRow3(),
              const SizedBox(width: 16,),
              buildButtonRow2(),
              const SizedBox(width: 16,),
              buildZoomControl(),
              const SizedBox(width: 16,),
              buildPublishButton(),
              const SizedBox(width: 16,),
              buildButtonRow1()
            ],
          ),
        ),
        body: theme
        // body: horizontal,
        );
  }

  _onWeightChange() {
    if (kDebugMode) {
      print('weight change');
    }
  }

  _onDividerTap(int dividerIndex) {
    ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 1),
      content: Text("Tap on divider: $dividerIndex"),
    ));
  }

  _onDividerDoubleTap(int dividerIndex) {
    ScaffoldMessenger.of(_context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 1),
      content: Text("Double tap on divider: $dividerIndex"),
    ));
  }

  Widget buildZoomControl() {
    return Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _controller.viewModel.disableDecreaseButton.value
                  ? null
                  : () {
                      _controller.viewModel.zoomDecrease();
                    },
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.green,
              ),
              iconSize: 16,
            ),
            Text("${_controller.viewModel.currentZoomValue.value}%"),
            IconButton(
              onPressed: _controller.viewModel.disableIncreaseButton.value
                  ? null
                  : () {
                      _controller.viewModel.zoomIncrease();
                    },
              icon: const Icon(
                Icons.add_circle,
                color: Colors.orange,
              ),
              iconSize: 16,
            ),
          ],
        ));
  }

  Widget buildButtonRow1() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
          iconSize: 16,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.save_alt),
          iconSize: 16,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.play_circle_rounded),
          iconSize: 16,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.splitscreen),
          iconSize: 16,
        ),
      ],
    );
  }

  Widget buildButtonRow2(){
    return Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.rectangle_outlined),
            iconSize: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.blur_circular),
            iconSize: 16,
          ),
        ]
    );
  }

  Widget buildButtonRow3(){
    return Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.align_vertical_top),
            iconSize: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.align_vertical_bottom),
            iconSize: 16,
          ),
        ]
    );
  }

  Widget buildButtonRow4(){
    return Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pageview_outlined),
            iconSize: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pages_outlined),
            iconSize: 16,
          ),
        ]
    );
  }

  Widget buildButtonRow5(){
    return Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.undo),
            iconSize: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.redo),
            iconSize: 16,
          ),
        ]
    );
  }

  Widget buildButtonRow6(){
    return Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_comment_outlined),
            iconSize: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
            iconSize: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_attributes_outlined),
            iconSize: 16,
          ),
        ]
    );
  }

  Widget buildButtonRow7(){
    return Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.cable_outlined),
            iconSize: 16,
          ),
        ]
    );
  }

  Widget buildPublishButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 8)),
            backgroundColor: MaterialStateProperty.all(_themeData.primaryColor),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
        child: Text("Publish",style: _themeData.textTheme.titleMedium!.merge(TextStyle(color: Colors.white,fontSize: 12)),),
      ),
    );
  }
}
