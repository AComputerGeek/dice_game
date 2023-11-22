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
  var imagePath = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1; // 1 <= random number <= 6

    setState(() {
      imagePath = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          MainAxisAlignment.center, // Center vertically all widgets
      children: [
        Image.asset(
          imagePath,
          width: 180,
        ),
        const SizedBox(height: 60), // Space between dice image and button
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            backgroundColor: const Color.fromARGB(255, 190, 255, 203),
            foregroundColor: Colors.black, // Button's label color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
