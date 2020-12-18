import 'package:get/get.dart';

class CounterController extends GetxController
{

  int counter=0;

  //--  call after Controller like is initState for StatefulWidget --//
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }


  //-- Call after onInit () after the widget is built --//
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
//-- Call after Controller deleting from Memory --//
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }


  void inCrement()
  {
    counter++;
    update(); //--like NotifierListener() in Provider
  }


}