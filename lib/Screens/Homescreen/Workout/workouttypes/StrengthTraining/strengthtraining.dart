import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/back.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/biceps.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/chest.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/leg.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/shoulder.dart';
import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/StrengthTraining/tricep.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StrengthTraining extends StatefulWidget {
  const StrengthTraining({Key? key}) : super(key: key);

  @override
  State<StrengthTraining> createState() => _StrengthTrainingState();
}

class _StrengthTrainingState extends State<StrengthTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Strength Training',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
      ),),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              
              SizedBox(
                height: 15,
              ),
              ReuseableCard(assetimage: 'assets/chestworkout.jpg', name: 'Chest Workout',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Chest()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/dipsonbench.jpg', name: 'Tricep Workout',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Tricep()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/latswidegrip.jpg', name: 'Back Workout',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Back()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/biceps.jpg', name: 'Bicep Workout',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Biceps()));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/arnoldpress.jpg', name: 'Shoulder Workout',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Shoulder()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/barbellsquats.jpg', name: 'Leg Workout',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Leg()));
              },),
            ]),
          ),
        ),
      ),
    );
    
  }
}
