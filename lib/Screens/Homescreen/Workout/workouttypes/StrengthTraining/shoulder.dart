import 'package:diet4u/Screens/Homescreen/Workout/workouttypes/description.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoulder extends StatefulWidget {
  const Shoulder({Key? key}) : super(key: key);

  @override
  State<Shoulder> createState() => _ShoulderState();
}

class _ShoulderState extends State<Shoulder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Shoulder Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/barbellpress.jpg', name: 'Barbell Seated Row',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=l7xQ7JhaYTE&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=2',
                 heading: 'Barbell Seated Row',
                 description: Barbellseatedrow,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/dumbbellpress.jpg', name: 'Dumbbell Press',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=M88OYNtB4Lo&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=4',
                 heading: 'Dumbbell Press',
                 description: Shoulderdumbbellpress,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/arnoldpress.jpg', name: 'Arnold Dumbbell Press',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=0MdjydCcYNk&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=1',
                 heading: 'Arnold Dumbbell Press',
                 description: Arnolddumbbellpress,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/frontraises.jpg', name: 'Dumbbell Front Raises',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=qyw3BwRcroM&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=5',
                 heading: 'Dumbbell Front Raises',
                 description: Dumbbellfrontraises,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/sidelateralraises.jpg', name: 'Lateral Raises',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=BV80TveYlc4&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=7',
                 heading: 'Latera',
                 description: Lateralraises, 
                 )));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/cableupright.jpg', name: 'Barbell Upright',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=N8Gb3gKS1mo&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=3',
                 heading: 'Barbell Upright',
                 description: Barbellupright,
                 )));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/reversefly.jpg', name: 'Machine Reverse Flyes',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=QzTXnP_PbQQ&list=PLhnZygL_8ZFQgHRVkXAFRQv98d8n76k2v&index=8',
                 heading: 'Machine Reverse Fly',
                 description: Machinereversefly,
                 )));
              },),
              
              
            ]),
          ),
        ),
      ),
    );
    
  }
}
