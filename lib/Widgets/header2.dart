import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading2 extends StatelessWidget {

  final String? text;
  

  const Heading2({ @required this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text!,style: GoogleFonts.urbanist(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold)),
        ],
      ),
      
    );
  }
}