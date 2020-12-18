import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_get_x_package/language/change_language/save_language.dart';

class AppLanguage extends GetxController
{

  var appLocale = 'ar';
  LocalStorage localStorage;

  @override
  void onInit()async
  {
    super.onInit();
     localStorage =LocalStorage();
     appLocale = await localStorage.languageSelected;
      Get.updateLocale(Locale(appLocale));
     update();
  }


  void changeLanguage({String type})
  {
    if(appLocale==type)
    {
      return ;
    }

    localStorage.saveLanguageToDisk(language: type);
    appLocale=type;
    update();
  }


}