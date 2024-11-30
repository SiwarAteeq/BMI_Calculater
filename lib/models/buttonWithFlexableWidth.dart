// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_initializing_formals, sort_child_properties_last, prefer_const_constructors

import 'package:bmi_calcoliation/models/BmiPage.dart';
import 'package:bmi_calcoliation/models/ResultPage.dart';
import 'package:bmi_calcoliation/models/plus_mins_buttons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class buttonWithFlexableWidth extends StatefulWidget {
  double? width;
  String text = "";
  buttonWithFlexableWidth(
    width,
    text,
  ) {
    this.width = width;
    this.text = text;
  }

  @override
  State<buttonWithFlexableWidth> createState() =>
      _buttonWithFlexableWidthState();
}

class _buttonWithFlexableWidthState extends State<buttonWithFlexableWidth> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          {
            double heightM = hight / 100;
            double result = weight / (heightM * heightM);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ResultPage(result);
            }));
          }
          ;
        },
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffe5005d),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
