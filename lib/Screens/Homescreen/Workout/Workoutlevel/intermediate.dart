import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';

class Intermediate extends StatefulWidget {
  const Intermediate({ Key? key }) : super(key: key);

  @override
  State<Intermediate> createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Workoutcard(text: 'Strength Training',image: AssetImage('assets/strength1.jpg'),),        
          Workoutcard(text: 'Cardio',image: AssetImage('assets/cardio1.jpg'),)
        ],
          
          
            
          ),
    );
  }
}