import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Createpass extends StatefulWidget {
  const Createpass({ Key? key }) : super(key: key);

  @override
  State<Createpass> createState() => _CreatepassState();
}

class _CreatepassState extends State<Createpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text('Forgot Password',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),      
    );
  }
}