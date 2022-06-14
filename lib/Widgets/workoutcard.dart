import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Workoutcard extends StatefulWidget {
  final String? text;
  final AssetImage? image;
  final VoidCallback? func;
  const Workoutcard({ this.text, this.image,this.func }); 

  @override
  State<Workoutcard> createState() => _WorkoutcardState();
}

class _WorkoutcardState extends State<Workoutcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: widget.func!,
        child: Container(
          height: 250,
          width: 250,
          decoration:BoxDecoration(
          image: DecorationImage(image: widget.image!,fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(40)) ,
          child: Padding(
            padding: const EdgeInsets.only(left:15,bottom: 25),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(widget.text!,style: GoogleFonts.urbanist(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}