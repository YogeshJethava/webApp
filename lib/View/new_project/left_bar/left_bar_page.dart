import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'project_component/project_component_page.dart';
import 'project_structure/project_structure_page.dart';
class LeftBarPage extends StatelessWidget {
  LeftBarPage({Key? key}) : super(key: key);
  late BuildContext _context;
  late ThemeData _themeData;
  final MultiSplitViewController _controller = MultiSplitViewController(areas: [
    Area(weight: 0.5, minimalWeight: 0.1),
    Area(weight: 0.5, minimalWeight: 0.1),
  ]);
  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);

    MultiSplitView multiSplitView = MultiSplitView(
        axis: Axis.vertical,
        onWeightChange: _onWeightChange,
        onDividerTap: _onDividerTap,
        onDividerDoubleTap: _onDividerDoubleTap,
        controller: _controller,
        children: [
          ProjectStructurePage(),
          ProjectComponentPage()
        ]);

    MultiSplitViewTheme theme = MultiSplitViewTheme(
        data: MultiSplitViewThemeData(
            dividerPainter: DividerPainters.grooved1(backgroundColor: _themeData.colorScheme.primary)),
        child: multiSplitView);
    return Scaffold(
      body: theme,
    );
  }

  _onWeightChange() {
      print('weight change');

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
}
