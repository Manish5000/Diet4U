import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weightlifting extends StatefulWidget {
  const Weightlifting({Key? key}) : super(key: key);

  @override
  State<Weightlifting> createState() => _WeightliftingState();
}

class _WeightliftingState extends State<Weightlifting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Weight Lifting',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/deadlift.jpg', name: 'Conventional Deadlift',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(
                  youtubelink: 'https://youtu.be/c0EWctpxhZs',description: Conventionaldeadlift,heading: 'Conventional Deadlift',
                )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/barbellsquats.jpg', name: 'Squats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(
                  youtubelink: 'https://youtu.be/XV1X4_bEvpo',description: Squats,heading: 'Squats',
                )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/benchpress.jpg', name: 'Barbell Bench Press',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(
                  youtubelink: 'https://youtu.be/9l9guSIjnZY',description: Barbellbenchpress,heading: 'Barbell Bench Press',
                )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sumodeadlift.jpg', name: 'Sumo Deadlift',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(
                  youtubelink: 'https://youtu.be/wQHSYDSgDn8',description: Sumodeadlift,heading: 'Sumo Deadlift',
                )));
              },),
              // SizedBox(
              //   height: 10,
              // ),
              // ReuseableCard(assetimage: 'assets/swimming.png', name: 'Swimming',ontap: (){},),
              //  SizedBox(
              //   height: 10,
              // ),
              // ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Sprinting',ontap: (){},),
            ]),
          ),
        ),
      ),
    );
    
  }
}
