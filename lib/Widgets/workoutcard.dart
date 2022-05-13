import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Workoutcard extends StatefulWidget {
  const Workoutcard({ Key? key }) : super(key: key);

  @override
  State<Workoutcard> createState() => _WorkoutcardState();
}

class _WorkoutcardState extends State<Workoutcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration:BoxDecoration(color: Colors.redAccent,
      image: DecorationImage(image: AssetImage('assets/welcome1.jpg'),fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(30)) ,
      child: Padding(
        padding: const EdgeInsets.only(left:15,bottom: 25),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Full Body Stretching',style: GoogleFonts.urbanist(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
              Text('10 min | Intermediate',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}