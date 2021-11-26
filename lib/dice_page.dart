import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 6;

  void throwDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: throwDice,
              child: Image.asset("images/dice$leftDice.png"),
              padding: const EdgeInsets.all(0),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: throwDice,
              child: Image.asset("images/dice$rightDice.png"),
              padding: const EdgeInsets.all(0),
            ),
          ),
        ],
      ),
    );
  }
}
