import 'package:diet4u/Widgets/button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activitylevel extends StatefulWidget {
  const Activitylevel({ Key? key }) : super(key: key);

  @override
  State<Activitylevel> createState() => _ActivitylevelState();
}

class _ActivitylevelState extends State<Activitylevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        
        padding: const EdgeInsets.fromLTRB(45, 75, 30, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Physical Activity Level?',style: GoogleFonts.urbanist(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Text('Choose your regular activity level. This will',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('help us to personalize plans for you.',style: GoogleFonts.urbanist(fontSize: 16,color: Colors.black,),),
              ],
            ),
SizedBox(height: MediaQuery.of(context).size.height*0.2,),
           Container(
             height: 60,
             width: 1200,
             decoration: BoxDecoration( 
               color: Colors.white,
               borderRadius: BorderRadius.circular(15),
               ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Beginner",style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
               ],
             ),
           ),
            SizedBox(height: 15,),
           Container(
             height: 60,
             width: 1200,
             decoration: BoxDecoration( 
               color: Colors.white,
               borderRadius: BorderRadius.circular(15),
               ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Intermediate",style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
               ],
             ),
           ),
           SizedBox(height: 15,),
           Container(
             height: 60,
             width: 1200,
             decoration: BoxDecoration( 
               color: Colors.white,
               borderRadius: BorderRadius.circular(15),
               ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Advanced",style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
               ],
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.200,),
            Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button2(name: 'Back', c1: Color(0xFFC4C4C4), func: (){Navigator.pop(context);}, c2: Color(0xFF7552FF)),
              SizedBox(width: 17,),
               Button2(name: 'Continue', c1: Color(0xFF7552FF), func: (){}, c2: Colors.white,)
            ],
          )
           
      
           ])) );
  }
}