import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FillProfile extends StatefulWidget {
  const FillProfile({ Key? key }) : super(key: key);

  @override
  State<FillProfile> createState() => _FillProfileState();
}

class _FillProfileState extends State<FillProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        
        padding: const EdgeInsets.fromLTRB(25, 75, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Heading1(
              mainheading: "Physical Activity level?", 
              subheading1: 'Choose your regular activity level. This will', 
              subheading2: 'help us to personalize plans for you.'),
            SizedBox(height: MediaQuery.of(context).size.height*0.100),
            CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundColor: Color(0xFFf5f5f8),
              radius: 60,
              child: Icon(
                Icons.person,
                size: 60,
                ),
            ),
            SizedBox(height: 20,),
            Textfield(text: 'Full Name',isPassword: false,),
            SizedBox(height: 15,),
            Textfield(text: 'Nickname',isPassword: false,),
            SizedBox(height: 15,),
            Textfield(text: 'Email',isPassword: false,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button2(name: 'Skip', c1: leftButton, func: (){}, c2: leftButtontext),
                SizedBox(width: 10,),
                Button2(name: 'Start', c1: rightbutton, func: (){}, c2: rightbuttontext),
              ],
            ),
      
          ])));
  }
}