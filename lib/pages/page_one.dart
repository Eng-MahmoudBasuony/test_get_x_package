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
            SizedBox(height: 20,),
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (value)=> CustomButton(
                background: Colors.green,
                colorText: Colors.white,
                onPressed: () {
                  Get.to(PageTwo());
                },
                text: 'Open Second Page',
              ),
            ),
            Divider(),
            SizedBox(height: 20,),
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (value)=> Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CustomButton(
                  background: Colors.blue,
                  colorText: Colors.white,
                  onPressed: ()
                  {
                    value.inCrement();
                  },
                  text: 'Increment',
                ),
                CustomButton(
                  background: Colors.red,
                  colorText: Colors.white,
                  onPressed: ()
                  {
                    value.clearCounter();
                  },
                  text: 'Clear',
                ),
                  CustomButton(
                    background: Colors.amber,
                    colorText: Colors.white,
                    onPressed: ()
                    {
                      value.decDecrementCounter();
                    },
                    text: 'Decrement',
                  ),
              ],),
            ),
            GetBuilder<CounterController>(
                builder:(value)=> Center(child: Text('Counter : ${value.counter}',style: TextStyle(fontSize: 20),))),
            Divider(),
          ],
        ),
      ),
    );
  }
}
