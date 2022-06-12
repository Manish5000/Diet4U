import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/diettypes.dart';
import 'package:diet4u/Screens/Homescreen/Diet/Diettypes/diettypes.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/workoutcard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Dietpage2 extends StatefulWidget {
  const Dietpage2({ Key? key }) : super(key: key);

  @override
  State<Dietpage2> createState() => _Dietpage2State();
}

class _Dietpage2State extends State<Dietpage2> {
   final user = FirebaseAuth.instance.currentUser;
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
                  padding: const EdgeInsets.only(top: 30),
                  child: Heading2(text: 'Hello '),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Featured Diet',style: GoogleFonts.urbanist(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold)),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>  DietData()));
                    },
                     child:Text('See All',style: GoogleFonts.urbanist(fontSize: 17,fontWeight: FontWeight.bold,color: rightbutton) )),
                     
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  height: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Workoutcard(text: 'High Protien',image: AssetImage('assets/protiendiet.jpg'),func: (){},),
                      SizedBox(width: 15,),
                      Workoutcard(text: 'Low Carbohydrate',image: AssetImage('assets/lowcarbsdiet.jpg'),func: (){},),
                      SizedBox(width: 15,),
                      Workoutcard(text: 'Low Fat',image: AssetImage('assets/lowfatdiet.jpg'),func: (){},),
                      
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}