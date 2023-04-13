import 'package:flutter/material.dart';
import 'package:webapp/Constants/color_constants.dart';
import 'pages/pages_page.dart';
import 'layers/layers_page.dart';
class ProjectStructurePage extends StatelessWidget {
  ProjectStructurePage({Key? key}) : super(key: key);

  late BuildContext _context;
  late ThemeData _themeData;
  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: _themeData.colorScheme.primary,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: AppBar(
              backgroundColor: ColorConstants.tabMenuColor,
              elevation: 0,
              bottom: TabBar(
                tabs: const [Tab(child: Text("Pages"),), Tab(child: Text("Layers"),)],
                indicatorWeight: 1.5,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelStyle: _themeData.textTheme.labelMedium,
                labelStyle: _themeData.textTheme.labelMedium,
                unselectedLabelColor: Colors.white,
                labelColor: _themeData.primaryColor,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: _themeData.primaryColor,width: 2),
                  insets: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            PagesPage(),
            LayersPage()
          ]),
        ));
  }
}
