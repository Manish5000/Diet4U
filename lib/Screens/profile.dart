import 'package:diet4u/Screens/Accountsetup/profle.dart';
import 'package:diet4u/Screens/SingupandSignin/authentication.dart';
import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:diet4u/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
 
   Profile({ Key? key, }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              mainheading: "Your Profile", 
              subheading1: "", 
              subheading2: ''),
            SizedBox(height: MediaQuery.of(context).size.height*0.030),
            CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundColor: Color(0xFFf5f5f8),
              radius: 50,
              child: Icon(
                Icons.person,
                size: 60,
                ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.070,),
            Container(
              height: MediaQuery.of(context).size.height*0.0600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFf5f5f8),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text('text',style: GoogleFonts.urbanist(fontSize: 16),),
              )),
            SizedBox(height: 20,),
           Container(
              height: MediaQuery.of(context).size.height*0.0600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFf5f5f8),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text('Your Height',style: GoogleFonts.urbanist(fontSize: 16),),
              )),
            SizedBox(height: 20,),
           Container(
              height: MediaQuery.of(context).size.height*0.0600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFf5f5f8),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text('Your Weight',style: GoogleFonts.urbanist(fontSize: 16),),
              )),
               SizedBox(height: 20,),
           Container(
              height: MediaQuery.of(context).size.height*0.0600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFf5f5f8),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Text('name'),
              )),
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