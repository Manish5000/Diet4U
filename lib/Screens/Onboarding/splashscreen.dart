import 'dart:async';

import 'package:diet4u/Screens/Onboarding/welcome1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashscreen extends StatefulWidget {
  

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  void initState() {
    changeScreen();
    super.initState();
  }

  changeScreen() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) {
        return Welcome1();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF886aff),Color(0xFF6944ff)])),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
           children:  <Widget>[
            SvgPicture.asset('assets/logo.svg',height: 120,width: 120,),
             SizedBox(height: 20,),
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