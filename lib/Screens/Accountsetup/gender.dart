import 'package:diet4u/Screens/Accountsetup/age.dart';
import 'package:diet4u/Widgets/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
     
    return Scaffold(
      
      body: Padding(
        
        padding: const EdgeInsets.fromLTRB(45, 75, 30, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tell Us About Yourself',style: GoogleFonts.urbanist(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Text('To give you a better experince and results',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('we need to know your gender.',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
              ],
            ),
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
            SizedBox(height: MediaQuery.of(context).size.height*0.120,),
            Button1(name: 'Continue', color1: Color(0xFF7552FF), func: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const AgeSelect()));
            }),
          ],
        ),
      ),
      
    );
  }
}