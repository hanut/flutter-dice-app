import 'package:dice_app/dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.grey[900],
        ),
        body: DicePage(),
      ),
    );
  }
}
