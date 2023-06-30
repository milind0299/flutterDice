import 'package:flutter/material.dart';
import 'dart:math';

var randomize = Random();
var diceNumber = randomize.nextInt(6) + 1;

class DiceImage extends StatefulWidget {
  const DiceImage({super.key});
  @override
  State<DiceImage> createState() => _DiceImage();
}

class _DiceImage extends State<DiceImage> {
  final alignmentCenter = MainAxisAlignment.center;

  void changeDice() {
    setState(() {
      diceNumber = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: alignmentCenter,
        children: [
          Image.asset('assets/images/dice-$diceNumber.png', width: 200),
          ElevatedButton(
            onPressed: changeDice,
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
