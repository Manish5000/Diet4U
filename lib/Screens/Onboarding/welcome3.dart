import 'package:diet4u/Screens/Accountsetup/age.dart';
import 'package:diet4u/Screens/Accountsetup/gender.dart';
import 'package:diet4u/Screens/Onboarding/welcome2.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              
              height: 550,
              width: 500,
              child: Image(image: AssetImage('assets/welcome3.jpg'),fit: BoxFit.fitWidth),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.030,),
            Text('GOOD \nNUTRITION\n = \n RESULTS',style: GoogleFonts.urbanist(fontSize: 26,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            SizedBox(height: MediaQuery.of(context).size.height*0.020,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Button1(
                name: 'Next', 
                color1: rightbutton,
                func: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                    return Genderscreen();
                  }));
                },
       ),
            )
          ],
        ),
        
      ),
    );
  }
}