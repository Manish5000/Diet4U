import 'dart:async';

import 'package:diet4u/Screens/Onboarding/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome1 extends StatefulWidget {
  const Welcome1({ Key? key }) : super(key: key);

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {

  void initState() {
    changeScreen();
    super.initState();
  }

  changeScreen() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) {
        return Welcome2();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/welcome1.jpg'),
            fit: BoxFit.cover
            ), 
          ),
          
          ),
          Positioned(
            top: 640,left: 20,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text('Welcome to                       ',style: GoogleFonts.urbanist(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2)),
                  SizedBox(height:7),
                  Text('Diet4U            ',style: GoogleFonts.urbanist(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white)),
                  SizedBox(height: 15,),
                  Text(' The best fitness and diet app for this century to \n accompany your sport',style: GoogleFonts.urbanist(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 0)),

                ],
              ),
              
            ),
          ),
          
          ],
        ),
      ),
      
    );
  }
}