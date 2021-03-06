import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Yoga',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/yoga.jpg', name: 'Overall Yoga',ontap: (){},),
              // SizedBox(
              //   height: 10,
              // ),
              // ReuseableCard(assetimage: 'assets/running.png', name: 'Running',ontap: (){
              //   Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage()));
              // },),
              // SizedBox(
              //   height: 10,
              // ),
              // ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Jumping Rope',ontap: (){},),
              // SizedBox(
              //   height: 10,
              // ),
              // ReuseableCard(assetimage: 'assets/cycling.png', name: 'Cycling',ontap: (){},),
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
