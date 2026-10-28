import 'package:campus_wellness_tracker/screens/assessment_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Campus Wellness Tracker', textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Evaluate your current study-life balance.'),
            Text('Jacqueline L. Bague'),
            Text('BSIT-3'),
            TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const AssessmentScreen()));
                  },
                  child: const Text('Start Assessment', style: TextStyle(fontSize: 48)),
                ),
          ],
        )
      ],
    );
  }
}