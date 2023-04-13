import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:webapp/Constants/color_constants.dart';
import 'package:webapp/Controller/new_project/left_bar/project_component/compos/compos_controller.dart';
import 'package:webapp/Routes/route_constants.dart';
import 'package:webapp/View/custom_widget/textfield.dart';

class ComposPage extends StatelessWidget {
  ComposPage({Key? key}) : super(key: key);

  late BuildContext _context;
  late ThemeData _themeData;

  final ComposController _controller = Get.find(tag: RouteConstants.composTab);

  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          YJTextField(hint: "Search",prefixIcon: Icon(Icons.search,color: Colors.white,size: 20,)),
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
                      content: obj.isExpandable.value ?  GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: obj.isExpandable.value ?  obj.items.length : 0,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1,),
                        itemBuilder: (contxt, indx){
                          final obj = _controller.viewModel.list[index].items[indx];
                          return Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(obj.icon.icon,color: Colors.white,),
                                SizedBox(height: 8,),
                                Text(obj.title,style: _themeData.textTheme.bodySmall!.merge(TextStyle(fontSize: 10,color: Colors.white)),)
                              ],
                            ),
                          );
                        },
                      ):Container(height: 1,),));
                },
                itemCount: _controller.viewModel.list.length,
                padding: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
