import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Back Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/chinups.jpg', name: 'Chin-Ups',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: '',)));
              },),
              SizedBox(
                height: 10,
              ),
              
              ReuseableCard(assetimage: 'assets/latswidegrip.jpg', name: 'Lat Pull Down\nWide Grip',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/bentover.jpg', name: 'Bent Over',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/latsvgrip.jpg', name: 'Lat Pull Down\nV-Grip',ontap: (){},),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/latsreversegrip.jpg', name: 'Lat Pull Down\nReverse Grip',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/rowingdumbbell.jpg', name: 'Rowing Dumbbell',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/rowingclosegrip.jpg', name: 'Rowing Close Grip',ontap: (){},),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
