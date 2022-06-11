import 'dart:async';

import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Screens/Onboarding/welcome1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
class splashscreen extends StatefulWidget {
  final Widget? nextscreen;
const splashscreen({@required this.nextscreen});
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  void initState() {
    changeScreen();
    super.initState();
  }

  changeScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) {
        return  StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasData) {
            return Homescreen();
          } else{
            return Welcome1();
          }
         
        });
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rightbutton,
      body: Container(
        decoration: BoxDecoration(
          ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
           children:  <Widget>[
            LottieBuilder.asset('assets/splashscreen.json',),
            SizedBox(height: MediaQuery.of(context).size.height*0.130,),
             Text('Diet4U',style: GoogleFonts.satisfy(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50,letterSpacing: 0,),),
            
           
             
            //  Text('Diet4U',style: GoogleFonts.pacifico(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50,letterSpacing: 2,),)
            //  Text('DIET AND FITNESS APP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18,letterSpacing: 4),)
             
           ],
        ),

      )
      
    );
  }
}

// #886aff
// rgba(136,106,255,255)


// #6944ff
// rgba(105,68,255,255)