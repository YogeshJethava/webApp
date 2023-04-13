import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/new_project_binding.dart';
import 'package:webapp/Routes/route_constants.dart';
import 'package:webapp/View/new_project/new_project_page.dart';


abstract class RouteManager{
  static List<GetPage<dynamic>> get getRoutePages =>[
    GetPage(name: RouteConstants.newProject, page: ()=> NewProjectPage(),binding: NewProjectBinding()),
  ];
}