import 'package:diet4u/Widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Contactus extends StatelessWidget {
  const Contactus({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: Center(child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Contact Us',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 24),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.040,),
                    Text('Email',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),
                    SizedBox(height: 7,),
                    Text('breakingmuscles5000@gmail.com',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 20,),
                    Text('Phone',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),
                    SizedBox(height: 7,),
                    Text('8094705928',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: MediaQuery.of(context).size.height*0.050,),
                    LottieBuilder.asset('assets/contactus.json'),
                    SizedBox(height: MediaQuery.of(context).size.height*0.050,),
                    Text('Thank You',style: GoogleFonts.urbanist(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),
                    
                  ],
                ),
              )),
             decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: leftButton
                      ),
      ),
          )],
      ),
    );
  }
}