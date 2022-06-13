import 'package:diet4u/Screens/Homescreen/homepage.dart';
import 'package:diet4u/Screens/SingupandSignin/chooseaccount.dart';
import 'package:diet4u/Screens/SingupandSignin/login.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Showdialog extends StatefulWidget {
  const Showdialog({ Key? key }) : super(key: key);

  @override
  State<Showdialog> createState() => _ShowdialogState();
}

class _ShowdialogState extends State<Showdialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 10,
        content: Column(
          mainAxisSize: MainAxisSize.min,

children: [
  Container(
    child: Column(children: [
Image.asset('assets/done.jpg',height: 200,),

Text('Congratulations',style: GoogleFonts.urbanist(fontSize: 26,fontWeight: FontWeight.bold,color: rightbutton)),
SizedBox(height: MediaQuery.of(context).size.height*0.020,),
Text('Your account will be ready to use after reset ',textAlign: TextAlign.center,style: GoogleFonts.urbanist(fontSize: 14,color:Colors.black)),
SizedBox(height: MediaQuery.of(context).size.height*0.060,),
Button1(name: 'Go to login page', color1: rightbutton, func: (){
   Navigator.push(context, MaterialPageRoute(builder: ((context) => Loginwithmail())));
})
    ]),
  )
  
  
],      ),
    );
    
        }  }