import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return Container(
      child: Column(
        children: [
          Image.asset('lib/images/logo.png'),
          TextButton(onPressed: (){}, child: Text("Click Now!"))
        ],
      ),
    );
  }
}