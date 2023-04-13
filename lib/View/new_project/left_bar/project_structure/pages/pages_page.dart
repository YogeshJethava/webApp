import 'package:flutter/material.dart';
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/left_bar/project_structure/pages/pages_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class PagesPage extends StatelessWidget {
  PagesPage({Key? key}) : super(key: key);
  late BuildContext _context;
  final PagesController _controller = Get.find(tag: RouteConstants.pagesTab);
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    TreeViewTheme _treeViewTheme = TreeViewTheme(
      expanderTheme: ExpanderThemeData(
          type: _controller.expanderType,
          modifier: _controller.expanderModifier,
          position: _controller.expanderPosition,
          // color: Colors.grey.shade800,
          size: 20,
          color: Colors.white),
      labelStyle: const TextStyle(
        fontSize: 14,
        letterSpacing: 0.3,
        color: Colors.white
      ),
      parentLabelStyle: const TextStyle(
        fontSize: 14,
        letterSpacing: 0.1,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        size: 18,
        color: Theme.of(_context).colorScheme.secondary,
      ),
      colorScheme: Theme.of(_context).colorScheme,
    );
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    iconSize: 20),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.create_new_folder_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                  size: 20,
                ),
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact)
          ],
        ),
        Expanded(child: TreeView(
          controller: _controller.treeViewController,
          allowParentSelect: true,
          supportParentDoubleTap: true,
          onExpansionChanged: (key, expanded) =>
              _controller.expandNode(key, expanded),
          onNodeTap: (key) {
            debugPrint('Selected: $key');
            /*setState(() {
              _selectedNode = key;
              _treeViewController =
                  _treeViewController.copyWith(selectedKey: key);
            });*/
          },
          theme: _treeViewTheme,
        ))
      ],
    );
  }
}
