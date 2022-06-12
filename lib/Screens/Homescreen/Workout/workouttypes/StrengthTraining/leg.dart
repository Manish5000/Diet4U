import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/description.dart';
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
              ReuseableCard(assetimage: 'assets/barbellsquats.jpg', name: 'Barbell Squats',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=AmhT-5tRIME&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=7',
                 heading: 'Barbell Squats',
                 description: Barbellsquats,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/legextention.jpg', name: 'Leg Extention',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=U2soEproaoo&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=6',
                 heading: 'Leg Extention',
                 description: Legextention,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/lyinglegcurl.jpg', name: 'Lying Leg Curl',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=EAaL_ej2ar8&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=4',
                 heading: 'Lying Leg Curl',
                 description: Lyinglegcurl,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/smithsquats.webp', name: 'Smith Machine Squat',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=Pg9qB9Zs5QM&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=2',
                 heading: 'Smith Machine Squats',
                 description: Smithmachinesquats,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/hacksquats.png', name: 'Hack Squats',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=L1yAOjTMOJM&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=3',
                 heading: 'Hack Squats',
                 description: Hacksquats,
                 )));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/legpress.jpg', name: 'Leg Press',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=Bf0CVLMNJ70&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=5',
                 heading: 'Leg Press',
                 description: Legpress,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/lunges.jpg', name: 'Stepping Lunges',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=zR_GPd44bcg&list=PLhnZygL_8ZFSgI6Ve9XIYZFlA_7o1eT-4&index=1',
                 heading: 'Stepping Lunges',
                 description: Steppinglunges,
                 )));
              },),
              
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
