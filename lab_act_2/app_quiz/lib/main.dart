import 'package:flutter/material.dart';
import 'colorful_text.dart';
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(11, 108, 209, 6),
      body: Center(child: ColorfulText()),
    ),
  ));
}