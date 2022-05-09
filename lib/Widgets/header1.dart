import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading1 extends StatelessWidget {
  final String? mainheading;
  final String? subheading1;
  final String? subheading2;
  const Heading1({@required this.mainheading,@required this.subheading1, @required this.subheading2}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(mainheading!,style: GoogleFonts.urbanist(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
        SizedBox(height: 20,),
        Text(subheading1!,style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(subheading2!,style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
          ],
        ),
        ],
      ));
  }
}