// @author: Amir Armion
// @version: V.01

import 'package:flutter/material.dart';
import 'package:dice_game/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: const Text(
            'Dice Game!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: const GradientContainer(
          Colors.white,
          Colors.lightBlue,
        ),
      ),
    ),
  );
}
