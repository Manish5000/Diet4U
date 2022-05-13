import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
showSelectedLabels: true,
selectedItemColor: Colors.black,

        items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/logo.svg',height: 30,width: 40,),label: 'Fitness'),
        BottomNavigationBarItem(icon: Icon(Icons.apple,size: 30,),label: 'Diet'),
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(

      title: Text('Diet4U',style: GoogleFonts.urbanist(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
       centerTitle: true, 
        leadingWidth: 200,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: Row(children: [
           SvgPicture.asset('assets/logo.svg',height: 45,),
           
          ]),
        ),
        actions: [
          CircleAvatar(
            radius: 23,
            backgroundColor: Colors.blue,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Heading2(text: 'Morning, Jack'),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Featured Workout',style: GoogleFonts.urbanist(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold)),
                    TextButton(onPressed: (){},
                     child:Text('See All',style: GoogleFonts.urbanist(fontSize: 17,fontWeight: FontWeight.bold) )),
                     
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  height: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Workoutcard(),
                      SizedBox(width: 8,),
                      Workoutcard(),
                      SizedBox(width: 8,),
                      Workoutcard(),
                      SizedBox(width: 8,),
                      Workoutcard(),
                      SizedBox(width: 8,),
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}