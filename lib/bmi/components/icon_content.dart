import 'package:diet4u/bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: GoogleFonts.urbanist(fontSize: 16,fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
