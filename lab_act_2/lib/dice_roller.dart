import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceImage = 'assets/dice-image/dice-2.png';
 void rollDice(){
  setState((){
    currentDiceImage = 'assets/dice-image/dice-4.png';
  });
 }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: [
              Image.asset(currentDiceImage),
              TextButton(onPressed: rollDice,
              child: Text(
                style: TextStyle(fontSize: 28, color: Colors.black),
                "Roll Dice")
                  )
            ],
          )
    );
  }
}