import 'package:get/get.dart';

class NewProjectViewModel{

  RxInt _zoomIndex = 3.obs;
  RxInt get zoomIndex => _zoomIndex;
  List<int> get zoomValueList => [
    10,25,50,100,150,200,300,400,500,600,700,800,900,1000
  ];
  RxInt get currentZoomValue => zoomValueList[zoomIndex.value].obs;

  final RxBool _disableIncreaseButton = false.obs;
  final RxBool _disableDecreaseButton = false.obs;
  RxBool get disableIncreaseButton => _disableIncreaseButton;
  RxBool get disableDecreaseButton => _disableDecreaseButton;


  ///Reset zoom
  void resetZoom(){
    _zoomIndex.value = 3;
  }


  ///Increase the zoom value
  void zoomIncrease(){
    if(zoomIndex.value < zoomValueList.length-1){
      _zoomIndex.value += 1;
      return;
    }
    _disableIncreaseButton.value = true;
    _disableDecreaseButton.value = false;
  }

  ///Decrease the zoom value
  void zoomDecrease(){
     if(zoomIndex.value > 0){
       _zoomIndex.value -= 1;
       return;
     }
     _disableIncreaseButton.value = false;
     _disableDecreaseButton.value = true;
  }
}