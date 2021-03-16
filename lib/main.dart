import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

void main() => runApp(HeyThereApp());

class HeyThereApp extends StatefulWidget {
  @override 
  State<HeyThereApp> createState() => _HeyThere();
 }

class _HeyThere extends State<HeyThereApp> {
  Random _random = new Random();
  Color _backColor = Color(0xFFFFF305);
  Color _textColor = Color(0xFF000000);
  int a, b, c, d;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            a = _random.nextInt(256);
            b = _random.nextInt(256);
            c = _random.nextInt(256);
            d = _random.nextInt(256);
            _backColor = Color.fromARGB(a, b, c, d);
            _textColor = Color.fromARGB(255, 255 - b, 255 - c, 255 - d);
            // text and background colors are always opposite
          });
        },
        child: Container(
          color: _backColor,
          child: Center(
            child: Text(
              'Hey there', 
              textDirection: TextDirection.ltr, 
              style: TextStyle (
                color: _textColor,
                fontSize: 32,
              )
            )
          )
        )
      )
    );
  }
}
