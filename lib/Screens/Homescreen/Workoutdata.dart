import 'package:flutter/material.dart';
class WorkoutData extends StatefulWidget {
  const WorkoutData({ Key? key }) : super(key: key);

  @override
  State<WorkoutData> createState() => _WorkoutDataState();
}

class _WorkoutDataState extends State<WorkoutData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(20),child: Column(children: [
        Text('Cardio')
      ]),),

    );
  }
}