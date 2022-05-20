import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Workoutpage extends StatefulWidget {
  const Workoutpage({ Key? key }) : super(key: key);

  @override
  State<Workoutpage> createState() => _WorkoutpageState();
}

class _WorkoutpageState extends State<Workoutpage> {
 final  user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Padding(
        padding: const EdgeInsets.only(left:20.0,),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Heading2(text: 'Hello, '),
                          Text(user!.displayName.toString(),style: GoogleFonts.urbanist(fontSize: 20,fontWeight: FontWeight.bold
                       )) ],
                      ),
                      
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
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
                          SizedBox(width: 15,),
                          Workoutcard(),
                          SizedBox(width: 10,),
                          Workoutcard(),
                          SizedBox(width: 10,),
                          Workoutcard(),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20,top: 20),
                      child: Column(
                        children: [
                           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Workout Level',style: GoogleFonts.urbanist(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold)),
                        TextButton(onPressed: (){},
                         child:Text('See All',style: GoogleFonts.urbanist(fontSize: 17,fontWeight: FontWeight.bold) )),
                         
                      ],
                    ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.200,
                            width: MediaQuery.of(context).size.width,
                            child: Workoutcard(),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.200,
                            width: MediaQuery.of(context).size.width,
                            child: Workoutcard(),
                          ),
                          
                        ],
                      ),
                    )
                    
              ],
            ),
          ),
        ),
      ),
    );
    }
}