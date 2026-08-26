import 'package:flutter/material.dart';
import 'dart:math';

class ColorfulText extends StatefulWidget{
  const ColorfulText({super.key});
  
  @override
  State<ColorfulText> createState() {
   return _ColorfulTextState();
  }
}

class _ColorfulTextState extends State<ColorfulText> {
  final randomizer = Random();
  var colors = {Colors.red, Colors.blue, Colors.yellow, Colors.green};
  int select =0;
  void startQuiz(){
    setState((){
      select =randomizer.nextInt(colors.length);
    });
  }
  
  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset('lib/images/logo.png', color: colors.elementAt(select),),
      Text("Learn Flutter in a fun way!",
      style: TextStyle(color: colors.elementAt(select), fontSize: 28),),
      OutlinedButton(onPressed: startQuiz, child: Text('Start Quiz',
      style: TextStyle(color: colors.elementAt(select), fontSize: 28),))
    ]
  );
  }
}

