import 'package:flutter/material.dart';
import 'styled_text.dart';
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
          child: Column(
            children: [
              Image.asset(currentImage),
              TextButton(onPressed: rollDice,
              child: Text(
                style: TextStyle(fontSize: 28, color: Colors.black),
                "Roll Dice")
                  )
            ],
          )
        )
      );
  }
}

