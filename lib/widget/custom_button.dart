import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Alignment alignment;
  final Color background;
  final Color colorText;

  CustomButton(
      {this.onPressed,
      this.text = '',
      this.alignment = Alignment.center,
      this.background = Colors.grey,this.colorText=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: background,
        textColor: colorText,
        padding: EdgeInsets.all(15),
        onPressed: onPressed,
        child: Text('$text'),
      ),
    );
  }
}
