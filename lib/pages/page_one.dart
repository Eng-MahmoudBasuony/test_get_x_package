import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_x_package/language/change_language/app_language.dart';

import 'package:test_get_x_package/pages/page_two.dart';
import 'package:test_get_x_package/widget/custom_button.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page one'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GetBuilder<AppLanguage>(
                init: AppLanguage(),
                builder:(controller)=> DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text('اللغه العربيه'),
                        value: 'ar',
                      ),
                      DropdownMenuItem(
                        child: Text('English'),
                        value: 'en',
                      )
                    ],
                    value: controller.appLocale,
                    onChanged: ((value) {

                      controller.changeLanguage(type: value);

                      Get.updateLocale(Locale(value));
                    })),
              ),
              Divider(),
              Text('text_test'.tr)
            ],
          ),
        ),
      ),
    );
  }
}
