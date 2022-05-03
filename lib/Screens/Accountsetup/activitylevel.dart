import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activitylevel extends StatefulWidget {
  const Activitylevel({ Key? key }) : super(key: key);

  @override
  State<Activitylevel> createState() => _ActivitylevelState();
}

class _ActivitylevelState extends State<Activitylevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        
        padding: const EdgeInsets.fromLTRB(45, 75, 30, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tell Us About Yourself',style: GoogleFonts.urbanist(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Text('To give you a better experince and results',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('we need to know your gender.',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
              ],
            ),
      
           ])) );
  }
}