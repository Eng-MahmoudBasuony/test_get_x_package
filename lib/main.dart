import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_get_x_package/language/translations.dart';
import 'package:test_get_x_package/pages/page_one.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(GetMaterialApp(
      translations: Translation(),
      //standard language for app
      locale: Locale('en'),
      //If an error occurred in the languages ​​file return  en is standard language for app
      fallbackLocale: Locale('en'),
      debugShowCheckedModeBanner: false,
      home: PageOne()));
}
