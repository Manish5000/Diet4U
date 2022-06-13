import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({ Key? key }) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,        
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('About Us',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
              SizedBox(height: MediaQuery.of(context).size.height*0.070,),
              Container(
                 decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: leftButton
                    ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('This is fitness and diet based application which will help you to keep fit and healthy.This application can be downloaded on mobile phones quite easily. The aim of this application is to make your lifestyle healthier by suggesting you right food intake, water intake and workout pattern. This application provide the function of BMI(Body Mass Index) calculator where the user can calculate their BMI by just inserting the weight, height and age.',
                    textAlign: TextAlign.center, 
                    style: GoogleFonts.urbanist(color: Colors.black,fontSize: 17,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 290,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Developers',textAlign: TextAlign.center, style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal)),
                    SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Manish Parihar\nMD Shahjada',textAlign: TextAlign.start, style: GoogleFonts.urbanist(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    
                  ],
                ),
                
              )
                    ),
                  )
                ],
              )
              )
          ],
        ),
      ),
    );
  }
}