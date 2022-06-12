import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardio extends StatefulWidget {
  const Cardio({Key? key}) : super(key: key);

  @override
  State<Cardio> createState() => _CardioState();
}

class _CardioState extends State<Cardio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Cardio',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/running.png', name: 'Jogging',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => 
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=99GSf7cWaJo',
                 heading: 'Jogging',
                 description: Jogging,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Jumping Rope',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => 
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=imYy1V9NgBQ',
                 heading: 'Jumping Rope',
                 description: Jumpingrope,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Cycling',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => 
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=6_aD8nfDoo0',
                 heading: 'Cycling',
                 description: Cycling,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Swimming',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => 
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=LijdyVaaDnY',
                 heading: 'Swimming',
                 description: Swimming,
                 )));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Sprinting',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) => 
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=-Ot-dP1xST4',
                 heading: 'Sprinting',
                 description: Sprinting,
                 )));
              },),
            ]),
          ),
        ),
      ),
    );
    
  }
}
