import 'dart:async';

import 'package:diet4u/Screens/Onboarding/welcome1.dart';
import 'package:flutter/material.dart';

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
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) {
        return Welcome1();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7552FF),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
           children: const <Widget>[
            Image(image: AssetImage('assets/fitness5.png',),height: 200,width: 150,),
             SizedBox(height: 20,),
            //  Text('DIET AND FITNESS APP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18,letterSpacing: 4),)
             
           ],
        ),

      )
      
    );
  }
}