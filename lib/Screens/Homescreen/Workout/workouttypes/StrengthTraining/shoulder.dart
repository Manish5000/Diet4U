import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoulder extends StatefulWidget {
  const Shoulder({Key? key}) : super(key: key);

  @override
  State<Shoulder> createState() => _ShoulderState();
}

class _ShoulderState extends State<Shoulder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Shoulder Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/barbellpress.jpg', name: 'barbell Seated Row',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/dumbbellpress.jpg', name: 'Dumbbell Press',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/arnoldpress.jpg', name: 'Arnold Dumbbell Press',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/frontraises.jpg', name: 'Dumbbell Front Raises',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sidelateralraises.jpg', name: 'Lateral Raises',ontap: (){},),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cableupright.jpg', name: 'Cable Upright',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/reversefly.jpg', name: 'Machine Reverse Flyes',ontap: (){},),
              
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
