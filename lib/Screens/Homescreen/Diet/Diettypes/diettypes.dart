import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/highcarb.dart';
import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/highprotien.dart';
import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/lowfat.dart';
import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/weightgain.dart';
import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/weightloss.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DietData extends StatefulWidget {
  const DietData({Key? key}) : super(key: key);

  @override
  State<DietData> createState() => _DietDataState();
}

class _DietDataState extends State<DietData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Diets',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/protiendiet.jpg', name: 'High Protein Diet',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  HighProtien()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/lowcarbsdiet.jpg', name: 'High Carbs Diet',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  HighCarbs()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/lowfatdiet.jpg', name: 'Low Fat Diet',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  LowFat()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/weightgaindiet.jpg', name: 'Weight Gain Diet',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Weightgain()));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/weightlossdiet.jpg', name: 'Weight Loss Diet',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Weightloss()));
              },),
            ]),
          ),
        ),
      ),
    );
    
  }
}
