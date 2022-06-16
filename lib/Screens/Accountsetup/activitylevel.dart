import 'package:diet4u/Screens/Accountsetup/profle.dart';
import 'package:diet4u/Widgets/button2.dart';
import 'package:diet4u/Widgets/constant.dart';
import 'package:diet4u/Widgets/header1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activitylevel extends StatefulWidget {
  const Activitylevel({ Key? key }) : super(key: key);

  @override
  State<Activitylevel> createState() => _ActivitylevelState();
}
enum Activity{
  Beginner,
  Intermediate,
  Advanced,
}
class _ActivitylevelState extends State<Activitylevel> {
  Color inactivecolor = Colors.white;
  Color activecolor = Color(0xFF7552FF);
   Activity? SelectActivity;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                mainheading: "Physical Activity Level?", 
                subheading1: 'Choose your regular activity level. This will', 
                subheading2: 'help us to personalize plans for you.'),
              
    SizedBox(height: MediaQuery.of(context).size.height*0.2,),
             GestureDetector(
               onTap: (){setState(() {
                 SelectActivity = Activity.Beginner;
               });},
               child: Container(
                 height: MediaQuery.of(context).size.height*0.070,
                width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration( 
                   
                   color: SelectActivity == Activity.Beginner? activecolor : inactivecolor,
                   borderRadius: BorderRadius.circular(15),
                   ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Beginner",style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
                   ],
                 ),
               ),
             ),
              SizedBox(height: 15,),
             GestureDetector(
               onTap: (){setState(() {
                 SelectActivity = Activity.Intermediate;
               });},
               child: Container(
                 height: MediaQuery.of(context).size.height*0.070,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration( 
                   color: SelectActivity == Activity.Intermediate? activecolor : inactivecolor,
                   borderRadius: BorderRadius.circular(15),
                   ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Intermediate",style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
                   ],
                 ),
               ),
             ),
             SizedBox(height: 15,),
             GestureDetector(
               onTap: (){setState(() {
                 SelectActivity = Activity.Advanced;
               });},
               child: Container(
                 
                 height: MediaQuery.of(context).size.height*0.070,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration( 
                   
                   color: SelectActivity == Activity.Advanced? activecolor : inactivecolor,
                   borderRadius: BorderRadius.circular(15),
                   ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Advanced",style: GoogleFonts.urbanist(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
                   ],
                 ),
               ),
             ),
             Spacer(),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button2(name: 'Back', buttoncolor: leftButton, func: (){Navigator.pop(context);}, textcolor: Color(0xFF7552FF)),
                SizedBox(width: 20,),
                 Button2(name: 'Continue', buttoncolor: rightbutton, func: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>  FillProfile()));
                 }, textcolor: Colors.white,)
              ],
            )
             
        
             ])) ),
    );
  }
}