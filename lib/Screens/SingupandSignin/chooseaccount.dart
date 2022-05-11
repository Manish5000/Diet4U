import 'dart:ffi';

import 'package:diet4u/Widgets/header2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseAccount extends StatefulWidget {
  const ChooseAccount({ Key? key }) : super(key: key);

  @override
  State<ChooseAccount> createState() => _ChooseAccountState();
}

class _ChooseAccountState extends State<ChooseAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20,top: 40) ,
              child: Heading2(text: "Let's you in"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.150,),
            Buttonarea(text: 'Continue with E-mail',icon: Icons.mail,c: Colors.black,),
            SizedBox(height: 10,),
            Buttonarea(text: 'Conitnue with google', icon: FontAwesomeIcons.google,c: Colors.black,iconsize: 20,),
            SizedBox(height: MediaQuery.of(context).size.height*0.140,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
                SizedBox(width: 5,),
                Text('Or'),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(height: 1,
                  decoration: BoxDecoration(color: Colors.black),),
                ),
            ],)

            
          ],
        ),
      ),
      
    );
  }
}


class Buttonarea extends StatefulWidget {

  final String? text;
  final IconData? icon;
  final Color? c;
  final double? iconsize;

  
  const Buttonarea({ @required this.text, @required this.icon, this.c,this.iconsize});

  @override
  State<Buttonarea> createState() => _ButtonareaState();
}

class _ButtonareaState extends State<Buttonarea> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        fixedSize: Size(MediaQuery.of(context).size.width*0.88, MediaQuery.of(context).size.height*0.070),
        elevation: 5,
        primary: Colors.white
      ),
      onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon,color: widget.c,size: widget.iconsize,),
          SizedBox(width: 10,),
          Text(widget.text!,style: GoogleFonts.urbanist(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}