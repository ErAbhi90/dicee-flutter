import 'dart:math';

import 'package:flutter/material.dart';

/*This is the main Screen of the app */
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void _changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
     // debugPrint("$leftDiceNumber");
      rightDiceNumber = Random().nextInt(6) + 1;
      //debugPrint("$rightDiceNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  _changeDiceFace();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  _changeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
