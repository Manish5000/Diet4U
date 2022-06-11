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
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Chin-Ups',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=kQEZeQ4kvJ0&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=7',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Lat Pull Down',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=_KRqs-aHWrU&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=6',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Lat Pull Down\nWide Grip',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=IFTu2Okmsnc&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=4',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Bent Over',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=oErJh9hUEGs&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=8',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Lat Pull Down\nV-Grip',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=KauYTbN3AVw&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=5',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Lat Pull Down\nReverse Grip',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=4vC253pBR4A&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=3',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Rowing Dumbbell',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=7EbAWsYinRs&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=2',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Rowing Close Grip',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=3eO8Bsh1yGY&list=PLhnZygL_8ZFTp9EU_X-3fx3DjjTSTOylF&index=1',)));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
