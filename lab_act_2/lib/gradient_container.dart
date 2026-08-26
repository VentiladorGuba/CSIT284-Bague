import 'package:flutter/material.dart';
import 'styled_text.dart';
import 'dice_roller.dart';
class GradientContainer extends StatelessWidget {
 GradientContainer({super.key});

var currentImage = 'assets/dice-image/dice-1.png';
void rollDice(){
  currentImage = 'assets/dice-image/dice-2.png';
}
  @override
  Widget build(context){
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.white
            ])
        ),
        child: Center(
          child: DiceRoller()
        )
      );
  }
}

