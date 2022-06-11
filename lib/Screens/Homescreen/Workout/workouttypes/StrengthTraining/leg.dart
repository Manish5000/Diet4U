import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leg extends StatefulWidget {
  const Leg({Key? key}) : super(key: key);

  @override
  State<Leg> createState() => _LegState();
}

class _LegState extends State<Leg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Leg Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Barbell Squats',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=AmhT-5tRIME&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=7',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/running.png', name: 'Leg Extention',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=U2soEproaoo&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=6',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/jumpingrope.jpg', name: 'Lying Leg Curl',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=EAaL_ej2ar8&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=4',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cycling.png', name: 'Smith Machine Squat',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=Pg9qB9Zs5QM&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=2',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/swimming.png', name: 'Hack Squats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=L1yAOjTMOJM&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=3',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Leg Press',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=Bf0CVLMNJ70&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=5',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sprinting.png', name: 'Stepping Lunges',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=zR_GPd44bcg&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=1',)));
              },),
              
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
