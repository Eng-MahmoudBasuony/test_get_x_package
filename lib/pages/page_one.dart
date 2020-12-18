import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              background: Colors.green,
              colorText: Colors.white,
              onPressed: () {
                Get.to(PageTwo());
              },
              text: 'Open Second Page',
            ),
            SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}
