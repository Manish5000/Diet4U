import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Weightloss extends StatefulWidget {
  const Weightloss({Key? key}) : super(key: key);

  @override
  State<Weightloss> createState() => _WeightlossState();
}

class _WeightlossState extends State<Weightloss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Weightloss Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: ' Lean Protein',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Eggs',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Vegetables',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Apples',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Berriess',ontap: (){},),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Nuts and Seeds',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Salmon',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Raw Oats',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Chia Seeds',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Water',ontap: (){},),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
