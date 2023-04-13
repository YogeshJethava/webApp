import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:webapp/Constants/color_constants.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/assets/assets_controller.dart';
import 'package:webapp/Routes/route_constants.dart';
import 'package:webapp/View/custom_widget/textfield.dart';
class AssetsPage extends StatelessWidget {
  AssetsPage({Key? key}) : super(key: key);

  late BuildContext _context;
  late ThemeData _themeData;

  final AssetsController _controller = Get.find(tag: RouteConstants.assetsTab);
  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildBody(),
    );
  }

  Widget buildBody(){
    return Column(
      children: [
        buildLibNewProject(),
        const YJTextField(hint: "Search",prefixIcon: Icon(Icons.search,color: Colors.white,size: 20,),suffixIcon: Icon(Icons.sort_by_alpha_outlined,color: Colors.white,size: 20,),),
        Expanded(
          child: Obx(
                () => ListView.builder(
              itemBuilder: (context, index) {
                final obj = _controller.viewModel.list[index];
                return Obx(() => StickyHeader(
                  header: InkWell(
                    onTap: (){
                      obj.isExpandable.toggle();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: ColorConstants.secondaryColor,
                      child: Row(
                        children: [
                          Icon(obj.isExpandable.value ? Icons.arrow_drop_down_outlined : Icons.arrow_right_outlined,color: Colors.white,),
                          Text(obj.title,style: _themeData.textTheme.labelMedium!.merge(TextStyle(color: Colors.white)),),
                        ],
                      ),
                    ),
                  ),
                  content: obj.isExpandable.value ? Container() : Container(height: 1,),));
              },
              itemCount: _controller.viewModel.list.length,
              padding: EdgeInsets.zero,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLibNewProject(){
    return Container(
      padding: EdgeInsets.only(left: 8),
      color: _themeData.colorScheme.secondary,
      child: Row(
        children: [
          Text("Library New project",style: _themeData.textTheme.titleMedium!.merge(TextStyle(fontSize: 12,color: Colors.white)),),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.connected_tv_outlined,color: Colors.white,),iconSize: 16,padding: EdgeInsets.zero,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined,color: Colors.white,),iconSize: 16,padding: EdgeInsets.zero,),
        ],
      ),
    );
  }
}
