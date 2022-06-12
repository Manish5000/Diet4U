import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tricep extends StatefulWidget {
  const Tricep({Key? key}) : super(key: key);

  @override
  State<Tricep> createState() => _TricepState();
}

class _TricepState extends State<Tricep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Tricep Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/triceppulldown.jpg', name: 'Cable Push Down',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=TGIUWkxW5xQ&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=3',
                 heading: 'Cable Push Down',
                 description: Cablepushdown,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/overheadextention.jpg', name: 'Overhead Tricep\n Extention',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=C4JODritKaY&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=2',
                 heading: 'Overhead Tricep Extention',
                 description: Overheadextention,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/dipsonbench.jpg', name: 'Dips on Bench',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=T29PqKGYZr0&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS',
                 heading: 'Dips on Bench',
                 description: Dipsonbench,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/closegripbench.jpg', name: 'Close Grip Barbell\n Bnech Press',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=sjkE4QAD86I&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=4',
                 heading: 'Close Grip Barbell Bench Press',
                 description: Closegripbarbellbenchpress,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/pushups.jpg', name: 'Diamond Push-Ups',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=Fes1O8Xq0_k&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=5',
                 heading: 'Diamond Push-ups',
                 description: Diamondpushups,
                 )));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/kickback.jpg', name: 'Kick-Back',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=C8qysBMQXX4&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=6',
                 heading: 'Kick-Back',
                 description: Kickback,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/onearmextention.jpg', name: 'Single Arm Extention',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=sVvGxSROBFA&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=7',
                 heading: 'Single Arm Extention',
                 description: Singlearmextention,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/skullcrusher.jpg', name: 'Skull-Crusher',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=glpNnGJq1u0&list=PLhnZygL_8ZFSSm6h0SL-izX41h_LY7hXS&index=8',
                 heading: 'Skull-Crusher',
                 description: Skullcrusher,
                 )));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
