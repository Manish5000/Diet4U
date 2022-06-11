import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/strengthtraining.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/cardio.dart';
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
          Workoutcard(text: 'Strength Training',image: AssetImage('assets/strength1.jpg'),func: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) =>  StrengthTraining()));
          },),        
          Workoutcard(text: 'Cardio',image: AssetImage('assets/cardio1.jpg'),func: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) =>  Cardio()));
          },)
        ],
          
          
            
          ),
    );
  }
}