import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(home: HeyThereApp()));

class HeyThereApp extends StatefulWidget {
  @override 
  State<HeyThereApp> createState() => _HeyThere();
 }

class _HeyThere extends State<HeyThereApp> {
  Random _random = new Random();
  Color _backColor = Color(0xFFFFF305);
  int r, g, b;
  double opacity;

  Widget _buildList(String str) {
    List<String> res = str.split("");
    List<TextSpan> let = [];
    for (String letter in res) {
      let.add(TextSpan(
                    text: letter,
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256))
                      )));
    }
    return RichText(text: TextSpan(children: let));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            r = _random.nextInt(256);
            g = _random.nextInt(256);
            b = _random.nextInt(256);
            opacity = (_random.nextInt(101))/100;
            _backColor = Color.fromRGBO(r, g, b, opacity);
          });
        },
        child: Container(
          color: _backColor,
          child: Center(
            child: _buildList("Hey there!"),
        )
      )
    ));
  }
}
