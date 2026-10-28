import 'package:flutter/material.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState(){
    return _AssessmentScreen();
  }
}

class _AssessmentScreen extends State<AssessmentScreen>{
  var counter = 0;
  bool done =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Question 1 of 5'),
        Text('How much do you weight?'),
        TextButton(onPressed: (){
          setState(() {
            counter+=3;
            _AssessmentScreen2();
          });
        }, child: Text('40-49', style: TextStyle(fontSize: 48))),
        TextButton(onPressed: (){
          setState(() {
            counter+=2;
            _AssessmentScreen2();
          });
        }, child: Text('50-59', style: TextStyle(fontSize: 48))),
        TextButton(onPressed: (){
          setState(() {
            counter+=1;
            _AssessmentScreen2();
          });
        }, child: Text('60+', style: TextStyle(fontSize: 48))),

      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     children: [
  //       Text('Question 2 of 5'),
  //       Text('How many hours do you typically sleep?'),
  //       TextButton(onPressed: (){
  //         setState(() {
  //           counter+=1;
  //         });
  //       }, child: Text('Less than 4')),
  //       TextButton(onPressed: (){
  //         setState(() {
  //           counter+=2;
  //         });
  //       }, child: Text('4-8')),
  //       TextButton(onPressed: (){
  //         setState(() {
  //           counter+=3;
  //         });
  //       }, child: Text('8+'))
  //     ],
  //   );
  // }
}

class AssessmentScreen2 extends StatefulWidget {
  const AssessmentScreen2({super.key});

  @override
  State<AssessmentScreen2> createState(){
    return _AssessmentScreen2();
  }
}

class _AssessmentScreen2 extends State<AssessmentScreen2>{
  var counter = 0;
  bool done =false;
   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         Text('Question 2 of 5'),
         Text('How many hours do you typically sleep?'),
         TextButton(onPressed: (){
           setState(() {
             counter+=1;
           });
         }, child: Text('Less than 4')),
         TextButton(onPressed: (){
           setState(() {
             counter+=2;
           });
         }, child: Text('4-8')),
         TextButton(onPressed: (){
           setState(() {
             counter+=3;
           });
         }, child: Text('8+'))
       ],
     );
   }
}
