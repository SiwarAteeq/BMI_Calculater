// ignore_for_file: prefer_const_constructors

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  double result = 0;
  ResultPage(result) {
    this.result = result;
  }
  Color color = Colors.white;

  String setResult(double result) {
    String text;
    if (result < 18.5) {
      text = "Underweight";
      color = Colors.blue;
    } else if (result < 24.9) {
      text = "Normal weight";
      color = Colors.green;
    } else if (result < 29.9) {
      text = "Overweight";
      color = Colors.orange;
    } else {
      text = "Obesity";
      color = Colors.red;
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xff0d1232),
            appBar: AppBar(
              backgroundColor: Color(0xff0d1232),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              title: Text(
                "Bmi Calculator",
                style: TextStyle(
                  color: Colors.white,
                  // fontSize: 20,
                ),
              ),
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(setResult(result),
                        style: TextStyle(
                            color: color,
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    Text("Your BMI is: ${result.toStringAsFixed(2)}",
                        style: TextStyle(color: Colors.white, fontSize: 25))
                  ]),
            )));
  }
}
