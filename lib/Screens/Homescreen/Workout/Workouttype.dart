import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/cardio.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/strengthtraining.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/stretching.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutData extends StatefulWidget {
  const WorkoutData({Key? key}) : super(key: key);

  @override
  State<WorkoutData> createState() => _WorkoutDataState();
}

class _WorkoutDataState extends State<WorkoutData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Workout Schedules',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
      ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              
              SizedBox(
                height: 15,
              ),
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Cardio',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Cardio()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/stretching.jpg', name: 'Stretching',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Stretching()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/weight.jpg', name: 'Weight Lifting',ontap: (){
                
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/yoga.jpg', name: 'Yoga',ontap: (){},),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/strength.jpg', name: 'Strength Traning',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  StrengthTraining()));
              },),
            ]),
          ),
        ),
      ),
    );
    
  }
}
