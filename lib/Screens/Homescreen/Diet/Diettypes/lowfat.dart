import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LowFat extends StatefulWidget {
  const LowFat({Key? key}) : super(key: key);

  @override
  State<LowFat> createState() => _LowFatState();
}

class _LowFatState extends State<LowFat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Low Fat Diet',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/cardio.jpg', name: 'Leafy Greens',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Fruits',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage()));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Beans and Legumes',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Sweet potatoes',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Beets',ontap: (){},),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Tart Cherry Juice',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Garlic',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Mushrooms',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'White, Lean Fish',ontap: (){},),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Egg Whites',ontap: (){},),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
