import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_x_package/pages/page_two.dart';

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
            RaisedButton(
              onPressed: () {
                //----------- routing by Get ----------------//

                // Navigator.push(context,
                //     MaterialPageRoute(
                //         builder: (context) => PageTwo()));

                //----------- routing by Get ----------------//

                Get.to(PageTwo());

                },
              child: Text('Open Second Page'),
            )
          ],
        ),
      ),
    );
  }
}
