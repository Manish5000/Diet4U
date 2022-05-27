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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Heading2(text: 'Workout Schedules'),
            ),
            SizedBox(
              height: 15,
            ),
            ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Cardio',ontap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage()));
            },),
            SizedBox(
              height: 10,
            ),
            ReuseableCard(assetimage: 'assets/stretching.jpg', name: 'Stretching',ontap: (){},),
            SizedBox(
              height: 10,
            ),
            ReuseableCard(assetimage: 'assets/weight.jpg', name: 'Weight Lifting',ontap: (){},),
            SizedBox(
              height: 10,
            ),
            ReuseableCard(assetimage: 'assets/yoga.jpg', name: 'Yoga',ontap: (){},),
             SizedBox(
              height: 10,
            ),
            ReuseableCard(assetimage: 'assets/strength.jpg', name: 'Strength Traning',ontap: (){},),
          ]),
        ),
      ),
    );
  }
}
