import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_x_package/controler/couter_controler.dart';
import 'package:test_get_x_package/pages/page_two.dart';
import 'package:test_get_x_package/widget/custom_button.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  ///================ GetX   reactive programing ======================//
  @override
  Widget build(BuildContext context) {
    CounterController counterController =
        Get.put(CounterController()); //dependency injection
    return Scaffold(
      appBar: AppBar(
        title: Text('Page one'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  background: Colors.blue,
                  colorText: Colors.white,
                  onPressed: () {
                    counterController.inCrement();
                  },
                  text: 'Increment',
                ),

                CustomButton(
                  background: Colors.amber,
                  colorText: Colors.white,
                  onPressed: () {
                    counterController.decDecrementCounter();
                  },
                  text: 'Decrement',
                ),
              ],
            ),
            Divider(),
            GetX<CounterController>(
              init: CounterController(),
                builder: (value) => Center(
                        child: Text(
                      'Counter : ${value.counter.value}',
                      style: TextStyle(fontSize: 20),
                    ))),
            Divider(),
          ],
        ),
      ),
    );
  }
}
