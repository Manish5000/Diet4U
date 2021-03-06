import 'package:diet4u/Screens/Homescreen/description.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stretching extends StatefulWidget {
  const Stretching({Key? key}) : super(key: key);

  @override
  State<Stretching> createState() => _StretchingState();
}

class _StretchingState extends State<Stretching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Stretching',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/stretching2.jpg', name: 'Overall Stretching',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=dg27goOdGFE&list=PLhnZygL_8ZFTMsPg-QRal6LkYBrzP850a',
                 heading: 'Stretching',
                 description: Stretch, 
                 )));
              },
              ),
  ]),
          ),
        ),
      ),
    );
    
  }
}
