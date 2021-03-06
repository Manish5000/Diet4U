import 'package:diet4u/Screens/Accountsetup/age.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/header1.dart';

class Genderscreen extends StatefulWidget {
  const Genderscreen({ Key? key }) : super(key: key);

  @override
  State<Genderscreen> createState() => _GenderscreenState();
}
enum Gender{
  male,
  female,
}
class _GenderscreenState extends State<Genderscreen> {
  Color inactivecolor = Color(0xFFC4C4C4);
  Color activecolor = Color(0xFF7552FF);
   Gender? selectedgender;
  @override
  
  Widget build(BuildContext context)
   {
     
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Heading1(
                mainheading: "Tell Us About Yourself", 
                subheading1: 'To give you a better experince and results', 
                subheading2: 'we need to know your gender'),
              
              SizedBox(height: MediaQuery.of(context).size.height*0.09),
              GestureDetector(
                onTap: (() {
                 setState(() {
                   selectedgender = Gender.male;
                 }); 
                }),
                child: CircleAvatar(
                  backgroundColor: selectedgender==Gender.male?activecolor :inactivecolor,
                  radius: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male,size: 60,color: Colors.white,),
                      Text('Male',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedgender = Gender.female;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: selectedgender==Gender.female?activecolor :inactivecolor,
                  radius: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female,size: 60,color: Colors.white,),
                      Text('Female',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                      
                    ],
                  ),
                ),
              ),
              Spacer(),
              Button1(name: 'Continue', color1: rightbutton, func: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>  AgeSelect()));
              }),
            ],
          ),
        ),
        
      ),
    );
  }
}