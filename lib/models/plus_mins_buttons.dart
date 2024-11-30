// ignore_for_file: prefer_const_constructors

// import 'package:bmi_calcoliation/models/BmiPage.dart';
import 'package:flutter/material.dart';

int age = 30;
int weight = 60;

// ignore: must_be_immutable
class plus_mins_buttons extends StatefulWidget {
  String txt = "";
  int value = 0;

  // ignore: use_key_in_widget_constructors
  plus_mins_buttons(txt, value) {
    this.txt = txt;
    this.value = value;
  }

  @override
  State<plus_mins_buttons> createState() => _plus_mins_buttonsState();
}

class _plus_mins_buttonsState extends State<plus_mins_buttons> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color(0xff252a48), borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.txt.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            Text(widget.value.toString(),
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filled(
                  onPressed: () {
                    setState(() {
                      widget.value--;
                      if (widget.txt == "Age")
                        age--;
                      else
                        weight--;
                    });
                  },
                  icon: Icon(
                    Icons.remove,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff4b4e5d),
                  ),
                ),
                IconButton.filled(
                  onPressed: () {
                    setState(() {
                      widget.value++;
                      if (widget.txt == "Age")
                        age++;
                      else
                        weight++;
                    });
                  },
                  icon: Icon(Icons.add),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff4b4e5d),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
