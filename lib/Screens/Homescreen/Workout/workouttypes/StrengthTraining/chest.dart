import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/resuablecard.dart';
import 'package:diet4u/Widgets/youtubeplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chest extends StatefulWidget {
  const Chest({Key? key}) : super(key: key);

  @override
  State<Chest> createState() => _ChestState();
}

class _ChestState extends State<Chest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Chest Workout',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
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
              ReuseableCard(assetimage: 'assets/pushups.jpg', name: 'Push-Ups',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://youtu.be/QZpkHcIx5p8',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/benchpress.jpg', name: 'Barbell Bench Press',ontap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=zISjOLBowKE&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=1',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/chestdumbbell.jpg', name: 'Dumbbell Press',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=6fPc_2IJCDQ&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=2',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/inclinedumbbell.jpg', name: 'Inclined Bench Press',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=aXWMb1A8344&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=3',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/inclinedumbbell.jpg', name: 'Inclined Dumbbell Press',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=i-oub4-O4Bo&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=4',)));
              },),
               SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/declinedbench.jpg', name: 'Declined Bench Press',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=JDG9G1RUpjA&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=9',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/declinedbench.jpg', name: 'Declined Dumbbell Press',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=FNhiddLToeY&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=10',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/fly.jpg', name: 'Machine Fly',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=j9u9NR4lHxI&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=5',)));
              },),
              SizedBox(
                height: 10,
              ),
              ReuseableCard(assetimage: 'assets/fly.jpg', name: 'Cable Cross-over',ontap: (){
                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                 Youtubepage(youtubelink: 'https://www.youtube.com/watch?v=OWtD7iOwK2U&list=PLhnZygL_8ZFRfo7Ewg6YFcewB44RD-0vs&index=7',)));
              },),
            ]),
          ),
        ),
      ),
    );
    
  }
}
