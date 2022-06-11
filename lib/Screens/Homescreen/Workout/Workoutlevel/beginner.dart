import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/stretching.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/yoga.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Beginner extends StatefulWidget {
  const Beginner({Key? key}) : super(key: key);

  @override
  State<Beginner> createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Workoutcard(text: 'Yoga',image: AssetImage('assets/yoga1.jpg'),func: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  Yoga()));
          },),        
          Workoutcard(text: 'Stretching',image: AssetImage('assets/stretching1.jpg'),func: (){
             Navigator.push(context,MaterialPageRoute(builder: (context) =>  Stretching()));
          },)
        ],
          
          
            
          ),
    );
  }
}
