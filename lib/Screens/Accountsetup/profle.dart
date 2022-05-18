import 'package:diet4u/Screens/SingupandSignin/authentication.dart';
import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Heading1(
              mainheading: "Fill Your Profile", 
              subheading1: "Don't worry, you can always change it later, or", 
              subheading2: 'you can skip it for now.'),
            SizedBox(height: MediaQuery.of(context).size.height*0.070),
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
                Button2(name: 'Skip', buttoncolor: leftButton, func: (){}, textcolor: leftButtontext),
                SizedBox(width: 20,),
                Button2(name: 'Start', buttoncolor: rightbutton, func: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>  Authentication()));
                }, textcolor: rightbuttontext),
              ],
            ),
      
          ])));
  }
}