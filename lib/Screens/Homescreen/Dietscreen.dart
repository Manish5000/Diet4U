import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Dietpage extends StatefulWidget {
  const Dietpage({ Key? key }) : super(key: key);

  @override
  State<Dietpage> createState() => _DietpageState();
}

class _DietpageState extends State<Dietpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
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