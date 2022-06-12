import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Biceps extends StatefulWidget {
  const Biceps({Key? key}) : super(key: key);

  @override
  State<Biceps> createState() => _BicepsState();
}

class _BicepsState extends State<Biceps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Bicep Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/barbellcurl.jpg', name: 'Barbell Curl',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=P52EFWUcwEM&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir',
                 heading: 'Barbell Curl',
                 description: Barbellcurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/dumbbellcurl.jpg', name: 'Dumbbell Curl',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=I47EaqoWtVo&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir&index=6',
                 heading: 'Dumbbell Curl',
                 description: Dumbbellcurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/inclinedcurl.jpg', name: 'Inclined Dumbbell Curl',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=6RkIRQZxNko&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir&index=5',
                 heading: 'Inclined Dumbbell Curl',
                 description: Inclineddumbbellcurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/preachercurl.jpg', name: 'EZ Preacher Curl',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=gjCEknrROWE&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir&index=3',
                 heading: 'EZ Preacher Curl',
                 description: Ezpreachercurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/barbellcurl.jpg', name: 'Close Grip',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=sxc6B6SgJEU&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir&index=2',
                 heading: 'Close Grip',
                 description: Closegrip,
                 )));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/singlearmpreacher.jpg', name: 'Single Arm Preacher\nCurl',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=xjVf8bdMyLA&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir&index=7',
                 heading: 'Single Arm Preacher Curl',
                 description: Singlearmpreachercurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/concentrationcurl.jpg', name: 'Concentration Curl',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: '',
                 heading: 'Concentration Curl',
                 description: Concentrationcurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              
              ReuseableCard(assetimage: 'assets/hammercurl.jpg', name: 'Hammer Curl',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=8MTG37RavbA&list=PLhnZygL_8ZFTY8jx38YMEIIiFPmrD4Wir&index=4',
                heading: 'Hammer Curl',
                description: Hammercurl,
                )));
              },),
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
