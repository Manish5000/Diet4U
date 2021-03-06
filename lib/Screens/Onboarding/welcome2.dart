import 'package:diet4u/Screens/Onboarding/welcome3.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome2 extends StatefulWidget {
  const Welcome2({ Key? key }) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              
              height: 550,
              width: 500,
              child: Image(image: AssetImage('assets/welcome2.jpg'),fit: BoxFit.fitWidth),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.050,),
            Text('Find the right\n workout for what\n you need',style: GoogleFonts.urbanist(fontSize: 28,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
              child: Button1(name: 'Next', color1: rightbutton,
              func: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const Welcome3()),
      );},),
            )
          ],
        ),
        
      ),
    );
  }
}