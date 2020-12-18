import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:test_get_x_package/language/translations.dart';
import 'package:test_get_x_package/pages/page_one.dart';

void main() {
  runApp(GetMaterialApp(
      translations: Translation(),
      locale: Locale('en'),
      //standard language for app
      fallbackLocale: Locale('en'),
      //If an error occurred in the languages ​​file return  en is standard language for app
      debugShowCheckedModeBanner: false,
      home: PageOne()));
}
