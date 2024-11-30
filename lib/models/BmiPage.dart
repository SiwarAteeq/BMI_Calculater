// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, prefer_initializing_formals, camel_case_types

import 'package:bmi_calcoliation/models/FemalOrMale.dart';
import 'package:bmi_calcoliation/models/buttonWithFlexableWidth.dart';
import 'package:bmi_calcoliation/models/plus_mins_buttons.dart';
import 'package:flutter/material.dart';

double hight = 150;

class BmiPage extends StatefulWidget {
  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff0d1232),
        appBar: AppBar(
          backgroundColor: Color(0xff0d1232),
          title: Text(
            "Bmi Calculator",
            style: TextStyle(
              color: Colors.white,
              // fontSize: 20,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        // padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            color:
                                isMale ? Color(0xffe5005d) : Color(0xff252a48),
                            borderRadius: BorderRadius.circular(8)),
                        child: FemalOrMale(
                          icon: Icons.male,
                          text: 'Male',
                        ),
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      // padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color:
                              !isMale ? Color(0xffe5005d) : Color(0xff252a48),
                          borderRadius: BorderRadius.circular(8)),
                      child: FemalOrMale(
                        icon: Icons.female,
                        text: 'Female',
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xff252a48),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(hight.toInt().toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                        SizedBox(
                          width: 5,
                        ),
                        Text("cm",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ],
                    ),
                    Slider(
                      value: hight,
                      min: 120,
                      max: 200,
                      activeColor: Color(0xffe5005d),
                      inactiveColor: Color(0xffb1b6d3),
                      onChanged: (value) {
                        setState(() {
                          hight = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                plus_mins_buttons("Age", 30),
                plus_mins_buttons("Weight", 60),
              ],
            )),
            buttonWithFlexableWidth(double.infinity, "Calculate"),
          ],
        ),
      ),
    );
  }
}
