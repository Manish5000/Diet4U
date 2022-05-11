// ignore_for_file: prefer_const_constructors

import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header2.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Loginwithmail extends StatefulWidget {
  const Loginwithmail({ Key? key }) : super(key: key);

  @override
  State<Loginwithmail> createState() => _LoginwithmailState();
}

class _LoginwithmailState extends State<Loginwithmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(leading:Icon(Icons.arrow_back,color: Colors.black,) ,backgroundColor: Colors.white,elevation: 0,),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: 
      Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left:20,top: 40),
            child: Heading2(text: 'Login to your Account'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.07,),
          Textfield(text: 'Email',prefixicon: Icons.mail,isPassword: false),
          SizedBox(height: 15),
          Textfield(text: 'Password',prefixicon: Icons.key,suffixicon: Icon(Icons.remove_red_eye),Obscuretext: true,isPassword: true),
          SizedBox(height: MediaQuery.of(context).size.height*0.035,),
          Button1(name: 'Sign In', color1: rightbutton, func: (){}),
          SizedBox(height: MediaQuery.of(context).size.height*0.025,),
          GestureDetector(onTap: (){},
          child: Text('Forgot Password ?',
          style: GoogleFonts.urbanist(fontSize: 14),)),
          SizedBox(height: MediaQuery.of(context).size.height*0.08,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
                SizedBox(width: 5,),
                Text('Or continue with'),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(height: 1,
                  decoration: BoxDecoration(color: Colors.black),),
                ),
            ],),
            SizedBox(height: MediaQuery.of(context).size.height*0.07,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(FontAwesomeIcons.facebook,color: Colors.black,),
              Icon(FontAwesomeIcons.google),
            
            ],)
        ]),),
    );
  }
}