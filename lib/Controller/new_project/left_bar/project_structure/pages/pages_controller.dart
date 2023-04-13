import 'package:flutter/material.dart';
import 'package:flutter_treeview/flutter_treeview.dart' as treeView;
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:get/get.dart';

class PagesController extends GetxController{
  late treeView.TreeViewController treeViewController;
  late List<treeView.Node> _nodes;
  bool docsOpen = true;
  String? _selectedNode;
  ExpanderPosition expanderPosition = ExpanderPosition.start;
  ExpanderType expanderType = ExpanderType.caret;
  ExpanderModifier expanderModifier = ExpanderModifier.none;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _nodes = [
      treeView.Node(
        label: 'Home',
        key: 'docs',
        expanded: docsOpen,
        icon: docsOpen ? Icons.folder : Icons.folder,
        children: [
          treeView.Node(
            label: 'Tab',
            key: 'd3',
            icon: Icons.folder,
            children: [
              treeView.Node(
                label: 'Page 1',
                key: 'pd1',
              ),
              treeView.Node(
                label: 'Page 2',
                key: 'jh1',
              ),
            ],
          ),
        ],
      ),
    ];

    treeViewController = treeView.TreeViewController(
      children: _nodes,
      selectedKey: _selectedNode,
    );
  }


  void expandNode(String key, bool expanded) {
    String msg = '${expanded ? "Expanded" : "Collapsed"}: $key';
    debugPrint(msg);
    treeView.Node? node = treeViewController.getNode(key);
    if (node != null) {
      List<treeView.Node> updated;
      if (key == 'docs') {
        updated = treeViewController.updateNode(
            key,
            node.copyWith(
              expanded: expanded,
              icon: expanded ? Icons.folder_open : Icons.folder,
            ));
      } else {
        updated = treeViewController.updateNode(
            key, node.copyWith(expanded: expanded));
      }
      /*setState(() {
        if (key == 'docs') docsOpen = expanded;
        _treeViewController = _treeViewController.copyWith(children: updated);
      });*/
      if (key == 'docs') docsOpen = expanded;
      treeViewController = treeViewController.copyWith(children: updated);
    }
  }

}