import 'package:flutter/material.dart';
import '../../../../Constants/color_constants.dart';
import 'compos/compos_page.dart';
import 'assets/assets_page.dart';
import 'icons/icons_page.dart';
class ProjectComponentPage extends StatelessWidget {
  ProjectComponentPage({Key? key}) : super(key: key);

  late BuildContext _context;
  late ThemeData _themeData;
  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: _themeData.colorScheme.primary,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: AppBar(
              elevation: 0,
              backgroundColor: ColorConstants.tabMenuColor,
              bottom: TabBar(
                tabs: const [Tab(child: Text("Compos")), Tab(child: Text("Icons")),Tab(child: Text("Assets"))],
                indicatorWeight: 1.5,
                isScrollable: true,
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
            ComposPage(),
            IconsPage(),
            AssetsPage()
          ]),
        ));
  }
}
