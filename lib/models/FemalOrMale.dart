// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class FemalOrMale extends StatefulWidget {
  IconData? icon;
  String text;
  FemalOrMale({required this.icon, required this.text});

  @override
  State<FemalOrMale> createState() => _FemalOrMaleState();
}

class _FemalOrMaleState extends State<FemalOrMale> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          widget.icon,
          color: Colors.white,
          size: 50,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
