import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weightgain extends StatefulWidget {
  const Weightgain({Key? key}) : super(key: key);

  @override
  State<Weightgain> createState() => _WeightgainState();
}

class _WeightgainState extends State<Weightgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Weightgain Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Homemade protein\nsmoothies',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Milk',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Rice',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Nuts and nut butters',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Red meats',ontap: (){},),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Potatoes and starches',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Salmon and oily fish',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Dried fruit',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Whole grain bread',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Avocados',ontap: (){},),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
