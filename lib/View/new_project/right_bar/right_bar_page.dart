import 'package:flutter/material.dart';
import 'properties/properties_page.dart';
import 'interaction/interaction_page.dart';
import 'notes/notes_page.dart';
class RightBarPage extends StatelessWidget {
  RightBarPage({Key? key}) : super(key: key);

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
            preferredSize: Size.fromHeight(48),
            child: AppBar(
              elevation: 0,
              bottom: TabBar(
                tabs: [Tab(child: Text("Properties")), Tab(child: Text("Interactions")),Tab(child: Text("Notes"))],
                indicatorWeight: 1.5,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
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
            PropertiesPage(),
            InteractionPage(),
            NotesPage(),
          ]),
        ));
  }
}
