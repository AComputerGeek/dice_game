// @author: Amir Armion
// @version: V.01

import 'package:flutter/material.dart';
import 'dart:math';

// Custom widget (StatefulWidget)
class DiceRoller extends StatefulWidget {
  // Construction
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// State class for a custom widget (StatefulWidget)
class _DiceRollerState extends State<DiceRoller> {
  var imagePath = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1; // 1 <= random number <= 6

    setState(() {
      imagePath = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center vertically all widgets
      children: [
        Image.asset(imagePath, width: 200),
        const SizedBox(height: 20), // Space between dice image and button
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black, // Button's label color
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
