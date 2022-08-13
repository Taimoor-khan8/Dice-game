import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNUmber = 1;

  void changeDiceFace(){
    setState(() {//setstate will always change the state of screen when its called.
      rightDiceNUmber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1; //this will only work from 1 to 6(0 will not appear because of +1)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceNUmber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

