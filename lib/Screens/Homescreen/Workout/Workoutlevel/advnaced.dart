import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/weightlifting.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';

class Advanced extends StatefulWidget {
  const Advanced({ Key? key }) : super(key: key);

  @override
  State<Advanced> createState() => _AdvancedState();
}

class _AdvancedState extends State<Advanced> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Workoutcard(text: 'Weigth Lifting',image: AssetImage('assets/weightlifting1.jpg'),func: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>  Weightlifting()));
          },),        
         
        ],
          
          
            
          ),
    );
  }
}