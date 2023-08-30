// @author: Amir Armion
// @version: V.01

import 'package:flutter/material.dart';
import 'package:dice_game/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blue,
        body: GradientContainer(
          Colors.white,
          Colors.lightBlue,
        ),
      ),
    ),
  );
}
