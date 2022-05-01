import 'package:diet4u/Screens/Onboarding/welcome2.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome3 extends StatefulWidget {
  const Welcome3({ Key? key }) : super(key: key);

  @override
  State<Welcome3> createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            
            height: 550,
            width: 500,
            child: Image(image: AssetImage('assets/welcome3.jpg'),fit: BoxFit.fitWidth),
          ),
          SizedBox(height: 20,),
          Text('GOOD \nNUTRITION\n = \n RESULTS',style: GoogleFonts.urbanist(fontSize: 26,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 55,),
          Button1(name: 'Next', color1: Color(0xFF7552FF),)
        ],
      ),
      
    );
  }
}