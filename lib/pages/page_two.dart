import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
               // Get.to(PageTwo());
              },
              child: Text('Open'),
            )
          ],
        ),
      ),
    );
  }
}
