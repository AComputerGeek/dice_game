// @author: Amir Armion
// @version: V.01

import 'package:flutter/material.dart';
import 'package:dice_game/dice_roller.dart';

// Variables
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// Custom widget (StatelessWidget)
class GradientContainer extends StatelessWidget {
  // Construction
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
