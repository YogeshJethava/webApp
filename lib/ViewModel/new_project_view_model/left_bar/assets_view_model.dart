import 'package:get/get.dart';
import 'package:webapp/Model/assets_model.dart';

class AssetsViewModel{
  ///Private Properties.
  final RxList<AssetsModel> _list = RxList.empty(growable: true);

  ///Get-Only Properties.
  RxList<AssetsModel> get list => _list;


  void addItem(AssetsModel item){
    _list.add(item);
  }

  void createMenuItem(){
    final colors = AssetsModel(title: "Colors", isExpandable: false.obs, items: [

    ]);

    final texts = AssetsModel(title: "Texts", isExpandable: false.obs, items: [
    ]);

    final components = AssetsModel(title: "Components", isExpandable: false.obs, items: [

    ]);


    addItem(colors);
    addItem(texts);
    addItem(components);

  }
}